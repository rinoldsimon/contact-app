class FeedbackMailer < ActionMailer::Base
  default from: "from@example.com"

  def feedback_email(feedback)
    @feedback = feedback
    mail(to: "crisrinold@gmail.com", subject: 'Fb-app Feedback : Email Notify')
  end
end
