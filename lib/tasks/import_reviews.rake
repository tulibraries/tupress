require 'nokogiri'
require 'yaml'

namespace :db do
    namespace :seed do

      desc 'Import book reviews to database'
      task :import_reviews => :environment do

      REVIEW_DATA = "#{Rails.root}/book_titles.xml"

      doc = File.open(REVIEW_DATA, 'rb:UTF-16le') { |f| Nokogiri::XML(f) }

      doc.xpath("//record").map do |node|
        unless node.xpath("reviews/review/review_text").empty? 
          node.xpath("reviews/review").map do |review|
            Review.create(
              :title_id => node.xpath("book_id").text,
              :title => node.xpath("title").text,
              :author => node.xpath("authors/author").map do |author|
                author.at("author_name").text
              end,
              :review => review.at("review_text").text,
              :weight => 0
            )
          end
        end
      end
    end
  end
end
