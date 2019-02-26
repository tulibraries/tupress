class Form < MailForm::Base
	# include MailForm::Delivery

	attributes :name,      :validate => true
  attributes :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :comments
  attributes :subject,
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
  :addmailertype

  attributes :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "cdoyle@temple.edu",
      :from => %("#{name}" <#{email}>)
    }
  end
end
