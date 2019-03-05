class Form < MailForm::Base
	# include MailForm::Delivery
  include ActiveModel::Validations

  attributes :name,             :validate => true
  attributes :email,            :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute  :address_line_1,   :validate => true
  attribute  :city,             :validate => true
  attribute  :state,            :validate => true
  attribute  :zipcode,          :validate => true
  attribute  :file    

  attributes :page_id,
             :subject,
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
             :comments

  attributes :request_type,
             :university,
             :department,
             :instructor,
             :course_title,
             :enrollment,
             :semester,
             :title1,
             :author1,
             :media_type,          :validate => true


  attributes :title2,
             :title3,
             :author2,
             :author3,
             :bookstore,
             :website,
             :request_text

  attributes :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "#{subject}",
      :to => "cdoyle@temple.edu",
      :from => %("#{name}" <#{email}>)
    }
  end
end
