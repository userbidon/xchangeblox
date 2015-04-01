class LandingController < ApplicationController

  def index

  end

  def promo
    @promo = params[:promo]
    @topics = Topic.where(promotion: @promo)
  end

  def topic
    @topic = params[:topic]
  end

  def consult

  end

end
