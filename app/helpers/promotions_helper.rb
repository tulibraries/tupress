module PromotionsHelper
  def promotion_book_count(promotion)
    @promotion_size = BookPromotion.where('promotion_id = ?', promotion.id).size
  end

  def subject_title(subject)
    s = Subject.find_by(subject_id: subject).subject
    "-- #{s}"
  end

  def subject_name(subject)
    if subject[0].index("/") 
      subject[0].gsub!("/", " / ")
    else
      subject[0]
    end
  end

  def order_subjects(subjects)
    ordered_subjects = []
    subjects.each do |subject|
      subject.each do |s|
        title = s.values.first["subject_title"]
        id = s.values.first["subject_id"]
        unless title.blank? || id.blank?
          ordered_subjects << [ title, id ]
        end
      end
    end
    ordered_subjects.each.uniq{ |s| [ s ] }.sort
  end

end
