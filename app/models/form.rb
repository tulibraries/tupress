class Form < MailForm::Base

  attribute  :name
  attribute  :email
  attribute  :address_line_1
  attribute  :city
  attribute  :state
  attribute  :zipcode
  attribute  :file    
  attribute  :request_type
             
  attributes :subject,
             :address_line_2,
             :country,
             :send_ecatalog,
             :send_print_catalog,
             :remove_from_mailing,
             :mailing_type,
             :send_newsletter,
             :newsletter_type,
             :type,
             :page,
             :comments,
             :book_title,
             :author,
             :chapter,
             :chapter_author,
             :page_numbers,
             :price_est,
             :publisher,
             :reprint_title,
             :pub_author,
             :reprint_pages,
             :copies,
             :pub_date,
             :requested_rights,
             :university,
             :department,
             :instructor,
             :course_title,
             :enrollment,
             :semester,
             :title1,
             :author1,
             :media_type,
             :title2,
             :title3,
             :author2,
             :author3,
             :bookstore,
             :website,
             :request_text

  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "#{subject}",
      :to => "tempress@temple.edu",
      :from => %("#{name}" <#{email}>)
    }
  end
end
