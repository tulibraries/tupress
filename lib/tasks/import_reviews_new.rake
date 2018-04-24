require 'nokogiri'
require 'yaml'

namespace :db do
    namespace :seed do

      desc 'Import book reviews to database'
      task :import_reviews_new => :environment do


      REVIEW_DATA = "#{Rails.root}/book_titles.xml"

      doc = File.open(REVIEW_DATA, 'rb:UTF-16le') { |f| Nokogiri::XML(f) }

      error_ids = []
      created_ids = []
      updated_ids = []
      new_review = nil


      doc.xpath("//record").map do |node|

      unless node.xpath("reviews/review/review_text").empty? 

      node.xpath("reviews/review").map do |newreview|
        oldreview = Review.find_by(review_id: node.xpath("review_id").text)
        if oldreview.nil?
          review = Review.new(review_id: node.xpath("review_id").text, weight: "0")
          new_review = true
        end
        review.tap do |r|

          r.title_id = node.xpath("book_id").text
          r.title = node.xpath("title").text
          r.author = node.xpath("author_byline").text
          r.review = newreview.at("review_text").text
          r.weight = "0"
    
        end #tap

        # binding.pry

      #   if review.save 
      #     if !new_review.nil?
      #       created_ids << review.review_id
      #     else
      #       updated_ids << node.xpath("review_id").text
      #     end
      #   else
      #       error_ids << review.review_id
      #   end     

      #   new_review = nil
      end #unless
    end #each

      # puts "count: "+(updated_ids.length+created_ids.length).to_s+"\n"
      # puts "errors: "+error_ids.length.to_s 

      # harvest = ReviewHarvest.new(error_ids: error_ids, updated_ids: updated_ids, created_ids: created_ids)

      # harvest.save
    
    end #task
  end #namespace: seed
end #namespace: db
end