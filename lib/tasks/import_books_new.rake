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
          b.title = node.xpath("title").text
          b.subtitle = node.xpath("subtitle").text
          b.author = node.xpath("authors/author").map do |name|
            name.at("author_name").text
          end
          b.about_author = node.xpath("authors/author").map do |bio|
            bio.at("author_bio").text
          end
          b.intro = node.xpath("intro").text
          b.blurb = node.xpath("blurb").text
          b.excerpt = node.xpath("excerpt").text
          b.cover_image = node.xpath("cover_image").text
          b.status = node.xpath("status").text
          # b.pages_total = node["format/pages_total"]
          # b.trim = node["format/trim"]
          # b.illustrations = node["format/illustrations_copy"]
          b.format = node.xpath("format").text
          b.isbn = node.xpath("isbn").text
          b.pub_date = node.xpath("pub_date").text
          b.in_series = node.xpath("series").map do |series|
            series.at("series_id").text
          end
          b.binding = node.xpath("bindings/binding").map do |bindings|
             Hash.from_xml(bindings.to_s)
          end
          b.description = node.xpath("description").text
          b.subjects = node.xpath("subjects/subject").map do |subject|
            Hash.from_xml(subject.to_s)
          end
          b.contents = node.xpath("contents").text
          b.hotweight = "1"
          b.newsweight = "1"
          b.catalog = node.xpath("catalog").text
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
          




