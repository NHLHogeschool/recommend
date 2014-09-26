class RecommendationMailer < ActionMailer::Base
  default from: 'noreply@recomme.nd'

  def recommendation_mail(recommendation)
    @recommendation = recommendation
    subject = "#{recommendation.user.screen_name} recommends an album to you!"

    mail(to: recommendation.recipient.email,
         subject: subject)
  end
end
