class AssignToNewsletterMailer < ApplicationMailer
  default from: 'martasopinska.kontakt@gmail.com'

  def welcome_mail(user)
    @user = user
    mail(to: @user.email, subject: 'Hej, miło mi Cię powitać w moim newsletterze!')
  end
end
