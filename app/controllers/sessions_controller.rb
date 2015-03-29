class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(mail: params[:session][:mail])
    if user.mail && params[:session][:mail]
      # Log the user in and redirect to the user's show page.
      redirect_to "/"
    else
      # Create an error message.
      render 'new'
    end
  end
end
