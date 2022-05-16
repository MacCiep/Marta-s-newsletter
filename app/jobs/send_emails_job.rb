class SendEmailsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    User.with_active.each do |user|
      days_difference = (Date.today - user.last_send).to_i
      if days_difference == 0
        AssignToNewsletterMailer.test_mail().deliver_now()
        user.version += 1
        user.last_send = Date.today
        user.save
      end
    end
  end
end