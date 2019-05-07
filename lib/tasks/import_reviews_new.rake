require 'nokogiri'
require 'yaml'

namespace :db do
    namespace :seed do

      desc 'Import book reviews to database'
      task :import_reviews_new, [:filepath] => :environment do |t, args|


      REVIEW_DATA = args.fetch(:filepath)

      if REVIEW_DATA 
        doc = File.open(REVIEW_DATA, 'rb:UTF-16le') { |f| Nokogiri::XML(f) }
      else
        doc = Nokogiri::XML("")
      end

      error_ids = []
      created_ids = []
      updated_ids = []
      deleted_ids = []
      xml_review_ids = []
      db_reviews = []
      db_review_ids = []
      new_review = nil



      doc.xpath("//record").map do |node|

      unless node.xpath("reviews/review/review_text").empty?

      node.xpath("reviews/review").map do |newreview|

        review = Review.find_by(review_id: newreview.xpath("review_id").text)
        # theBook = review.title_id
        # bookReviews = Review.find_by(review_id: theBook)

        # if bookReviews.exclude?(bookReviews)
        # end
        
        # check all book reviews to see if review exists
        # if db reviews has more reviews than xml reviews for same book delete extras

        if review.nil?
          review = Review.new(review_id: newreview.xpath("review_id").text, weight: "0")
          new_review = true
        end

        review.tap do |r|

          r.title_id = node.xpath("book_id").text
          r.title = node.xpath("title").text
          r.author = node.xpath("author_byline").text
          r.review = newreview.at("review_text").text
          r.weight = "0"

        end #tap


        if review.save
          unless new_review.nil?
            created_ids << review.title_id
          end
        else
            error_ids << review.title_id
        end

        new_review = nil

        end #map
      end #unless
    end #map

    # Check for reviews in the db but no longer in the feed

    db_reviews = Review.all.each do |review|
      db_review_ids << review.review_id
    end

    doc.xpath("//record/reviews/review").map do |xml|
      xml_review_ids << xml.xpath("review_id").text
    end

    db_review_ids.each do |db_id|
      if xml_review_ids.exclude? db_id
        toDelete = Review.find_by(review_id: db_id)
        deleted_ids << db_id.to_s
        toDelete.destroy
      end
    end

    #   puts "deletions: "+deleted_ids.length.to_s
      puts "created: "+created_ids.length.to_s
      puts "errors: "+error_ids.length.to_s

      # harvest = ReviewHarvest.new(error_ids: error_ids, deleted_ids: deleted_ids, created_ids: created_ids)
      harvest = ReviewHarvest.new(error_ids: error_ids, created_ids: created_ids)

      # binding.pry

      harvest.save

    end #task
  end #namespace: seed
end #namespace: db
