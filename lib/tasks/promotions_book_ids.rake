# frozen_string_literal: true

require "open-uri"
require "resolv-replace"
require "logger"

namespace :sync do
  task promotion_book_ids: [:environment] do

    @updated = 0
    @not_saved = 0
    @log = Logger.new("log/sync-reps.log")
    @stdout = Logger.new(STDOUT)


    def stdout_and_log(message, level: :info)
      @log.send(level, message)
      @stdout.send(level, message)
    end

    xml_ids = []
    
    promotions = Promotion.all

    promotions.each do |promo|
      promo.book_ids.each do |book_id|
        xml_id = Book.find(book_id).book_id
        xml_ids << xml_id
      end

      promo.update(xml_ids: xml_ids)
      stdout_and_log(%Q(Promo ids: #{promo["xml_ids"]}))
      xml_ids = []

      begin
        if promo.save!
          @updated += 1
        else
          stdout_and_log(%Q(Promo not saved: #{promo["title"]}))
          @not_saved += 1
        end
      rescue => err
        stdout_and_log(%Q(Promo: #{record_hash["title"]} -- #{err.message}))
        @not_saved += 1
      end

      stdout_and_log("Syncing completed with #{@updated} updated, and #{@not_saved} not saved.")
    end


  end
end
