class FeedController < ApplicationController
  before_action :authenticate_user!

  def show
    @tweets = Tweet.where(user: current_user.all_following)
  end
end
