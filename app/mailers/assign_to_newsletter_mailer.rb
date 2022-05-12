class AssignToNewsletterMailer < ApplicationMailer
  default from: 'martasopinska.kontakt@gmail.com'

  def test_mail
    mail(to: 'martasopinska.kontakt@gmail.com', subject: "Hi, I'm your first testing mail")
  end

  def welcome_mail(user)
    @user = user
    mail(to: @user.email, subject: 'Hej, miło mi Cię powitać w moim newsletterze!')
  end
end
