module PromotionsHelper
    def promo_social
        javascript_tag "$(document).ready(function(){
                            $('.share').ShareLink({
                                title: '"+@promotion.title+"',
                                text: '"+@promotion.title+"',
                                url: 'http://tupress.temple.edu/promotions/"+@promotion.id.to_s+"'
                            });
                            $('.counter').ShareCounter({
                                url: 'http://google.com/',
                                increment: true
                            });
                        });
                            "
  end

  def promotion_book_count(promotion)
    @promotion_size = BookPromotion.where('promotion_id = ?', promotion.id).size
  end

  def subject_title(subject)
    s = Subject.find_by(subject_id: subject).subject
    "-- #{s}"
  end

  def order_subjects(subjects)
    ordered_subjects = []
    subjects.each do |subject|
      subject.each do |s|
        ordered_subjects << [s.values.first["subject_title"], s.values.first["subject_id"]]
      end
    end
    ordered_subjects.each.uniq { |s| [ s[0], s[1] ] }.sort
  end

end
