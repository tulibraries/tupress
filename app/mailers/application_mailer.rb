class ApplicationMailer < ActionMailer::Base
  default to: 'cdoyle@temple.edu'
  layout 'mailer'

  def contact(form)
    @user = form
    mail(body: '', from: @user.email, subject: @user.subject, comments: @user.comments,
    	  address1: @user.address1,
			  address2: @user.address2,
			  city: @user.city,
			  state: @user.state,
			  zipcode: @user.zipcode,
			  country: @user.country,
			  ecatalog: @user.ecatalog,
			  printcatalog: @user.printcatalog,
			  removemailer: @user.removemailer,
			  removemailertype: @user.removemailertype,
			  addmailer: @user.addmailer,
			  addmailertype: @user.addmailertype)
	end
end
