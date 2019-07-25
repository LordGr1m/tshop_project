class UserMailer < ActionMailer::Base
  default from: "laoag.edmhar@gmail.com"


  def mailer(user)
    @user = user
    mail(to: @user.email, subject: "Registration complete - #{@user.name}")
  end
end