class Api::TweetsController < ApplicationController
  def index
    render json: TwitterClient.home_timeline
  end

  def tweet
    TwitterClient.tweet(params[:tweet])
  end
end
