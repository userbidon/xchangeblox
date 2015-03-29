class SessionsController < ApplicationController

  def new
    render 'new'
  end

  def create

         #met le user avec l'id 1 dans la sessions

    user = User.find_by_mail(params[:session][:mail])

    if user
      session[:current_user_id] = user.id
      flash[:error] = "Vous avez bien été connecté à l'application"
      redirect_to :root
    else
      session[:current_user_id] = nil
      flash[:error] = "ce mail n'existe pas dans la base de donnée"
      render 'new'
    end
  end

  def destroy
    session[:current_user_id] = nil
    flash[:success] = "vous avez bien été déconnecté"
    redirect_to :root
  end
end
