require 'nokogiri'
require 'yaml'

namespace :db do
    namespace :seed do

      desc 'Import books to database'
      task :import_books_new => :environment do


      BOOK_DATA = "#{Rails.root}/book_titles.xml"

      doc = File.open(BOOK_DATA, 'rb:UTF-16le') { |f| Nokogiri::XML(f) }

      error_ids = []
      created_ids = []
      updated_ids = []
      new_book = nil

      doc.xpath("//record").map do |node|
        book = Book.find_by(book_id: node.xpath("book_id").text)

        if book.nil?
          book = Book.new(book_id: node.xpath("book_id").text, title: " ")
          new_book = true
        end
        book.tap do |b|
          b.title = node.xpath("title").text.chop!
          b.subtitle = node.xpath("subtitle").text.chop!
          b.author_id = node.xpath("authors/author").map do |id|
            id.at("author_id").text.chop!
          end
          b.author_prefix = node.xpath("authors/author").map do |name|
            name.at("author_prefix").text.chop!
          end
          b.author_first = node.xpath("authors/author").map do |name|
            name.at("author_first").text.chop!
          end
          author_last = node.xpath("authors/author").map do |name|
            name.at("author_last").text.chop!
          end
          b.author_last = author_last.first.chop!
          b.author_suffix = node.xpath("authors/author").map do |name|
            name.at("author_suffix").text.chop!
          end
          # binding.pry
          b.author_byline = node.xpath("author_byline").text.chop!
          b.about_author = node.xpath("author_bios").text.chop!
          b.intro = node.xpath("intro").text.chop!
          b.blurb = node.xpath("blurb").text.chop!
          b.excerpt = node.xpath("excerpt").text.chop!
          b.cover_image = node.xpath("cover_image").text.chop!
          b.status = node.xpath("status").text.chop!
          # binding.pry
          b.pages_total = node.xpath("format/pages_total").text.chop!
          b.trim = node.xpath("format/trim").text.chop!
          b.illustrations = node.xpath("format/illustrations_copy").text.chop!
          # b.format = node.xpath("format").text
          b.isbn = node.xpath("isbn").text.chop!
          b.pub_date = node.xpath("pub_date").text.chop!
          b.in_series = node.xpath("series").map do |series|
            series.at("series_id").text.chop!
          end
          b.binding = node.xpath("bindings/binding").map do |bindings|
             Hash.from_xml(bindings.to_s)
          end
          b.description = node.xpath("description").text.chop!
          b.subjects = node.xpath("subjects/subject").map do |subject|
            Hash.from_xml(subject.to_s)
          end
          b.contents = node.xpath("contents").text.chop!
          b.hotweight = "1"
          b.newsweight = "1"
          b.catalog = node.xpath("catalog").text.chop!
        end #tap

        # binding.pry

        if book.save 
          if !new_book.nil?
            created_ids << book.book_id
          else
            updated_ids << node.xpath("book_id").text
          end
        else
            error_ids << book.book_id
        end     

        new_book = nil
      end #each

      puts "count: "+(updated_ids.length+created_ids.length).to_s+"\n"
      puts "errors: "+error_ids.length.to_s 

      harvest = Harvest.new(error_ids: error_ids, updated_ids: updated_ids, created_ids: created_ids)

      harvest.save
    
    end #task
  end #namespace: seed
end #namespace: db
          




