class FeedbackMailer < ActionMailer::Base
  default from: "feedback@example.com"

  def feedback_email(feedback)
    @feedback = feedback
    mail(to: "crisrinold@gmail.com", subject: 'Fb-app Feedback : Email Notify')
  end
end
