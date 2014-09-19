class RecommendationsController < ApplicationController
  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
    @recommendation.album = Album.new
  end

  def create
    @recommendation = Recommendation.new(recommandation_params)
    @recommendation.user = current_user
    @recommendation.save
    redirect_to root_path
  end

  private

  def recommandation_params
    params.require(:recommendation).permit!
  end
end
