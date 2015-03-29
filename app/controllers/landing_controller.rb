class LandingController < ApplicationController

  def index
    @use = session[:user_id]
  end

end
