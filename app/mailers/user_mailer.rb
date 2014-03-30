class UserMailer < ActionMailer::Base
  default from: "info@objectstream.com"

  def welcome_email(user,url)
    @user = user
    @url  = "http://#{url}/login"
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
