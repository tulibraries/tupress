class ApplicationMailer < ActionMailer::Base
  default to: 'cdoyle@temple.edu'
  layout 'mailer'

  def contact(form)
    @user = form
    mail(body: '', from: @user.email, subject: @user.subject, comments: @user.comments) 
  end
end
