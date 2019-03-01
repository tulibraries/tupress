class Form < MailForm::Base
	# include MailForm::Delivery

  attributes :name,      :validate => true
  attributes :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :comments
  attributes :subject,
             :address,
             :address1,
             :address2,
             :city,
             :state,
             :zipcode,
             :country,
             :ecatalog,
             :printcatalog,
             :removemailer,
             :removemailertype,
             :addmailer,
             :addmailertype,
             :type,
             :page

  attributes :requesttype,
             :university,
             :department,
             :instructor,
             :coursetitle,
             :enrollment,
             :semester,
             :title1,
             :title2,
             :title3,
             :author1,
             :author2,
             :author3,
             :bookstore,
             :mediatype,
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
