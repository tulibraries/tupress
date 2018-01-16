require 'nokogiri'
require 'yaml'

namespace :db do
    namespace :seed do

        desc 'Import books to database'
        task :import_data => :environment do

            BOOK_DATA = "#{Rails.root}/book_titles.xml"

            doc = File.open(BOOK_DATA, 'rb:UTF-16le') { |f| Nokogiri::XML(f) }

      doc.xpath("//record").map do |node|
        Book.create(
          :book_id => node.xpath("book_id").text,
          :title => node.xpath("title").text,
          :subtitle => node.xpath("subtitle").text,
          :author => node.xpath("authors/author").map do |author|
            author.at("author_name").text
          end,
          :about_author => node.xpath("authors/author").map do |author|
            author.at("author_bio").text
          end,
          :intro => node.xpath("intro").text,
          :blurb => node.xpath("blurb").text,
          :excerpt => node.xpath("excerpt").text,
          :is_guide => node.xpath("is_guide").text,
          :cover_image => node.xpath("cover_image").text,
          :status => node.xpath("status").text,
          :format => node.xpath("format").text,
          :isbn => node.xpath("isbn").text,
          :pub_date => node.xpath("pub_date").text,
          :in_series => node.xpath("series").map do |series|
            series.at("series_id").text
          end,
          :binding => node.xpath("bindings/binding").map do |bindings|
             Hash.from_xml(bindings.to_s)
          end,
          :description => node.xpath("description").text,
          :reviews => node.xpath("reviews/review").map do |review|
            review.at("review_text").text
          end,
          :subjects => node.xpath("subjects/subject").map do |subject|
            # subject.at("subject_id").text
            Hash.from_xml(subject.to_s)
          end,
          :contents => node.xpath("contents").text,
          :award => node.xpath("award").text,
          :award_year => node.xpath("award_year").text,
          :hot => node.xpath("hot").text,
          :hot_text => node.xpath("hot_text").text,
          :news => node.xpath("news").text,
          :news_text => node.xpath("news_text").text,
          :catalog => node.xpath("catalog").text,
          :course_adoption => node.xpath("course_adoption").text,
          :highlight => node.xpath("highlight").text,
          :highlight_image => node.xpath("highlight_image").text
      )
      end
    end
  end
end
