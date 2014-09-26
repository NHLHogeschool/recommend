class RecommendationsController < ApplicationController
  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
    @recommendation.album = Album.new
    @recommendation.recipient = Recipient.new
  end

  def create
    @recommendation = Recommendation.new(recommandation_params)
    @recommendation.user = current_user

    if @recommendation.save
      RecommendationMailer.recommendation_mail(@recommendation).deliver
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def recommandation_params
    params.require(:recommendation).permit!
  end
end
