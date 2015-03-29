class ApplicationController < ActionController::Base

  before_action :set_current_user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def set_current_user
    if session[:current_user_id]
      @current_user =  User.find(session[:current_user_id])
    end
  end

  def force_user_to_be_connected
    unless @current_user
      flash[:error] = 'Vous devez être connecté pour effectuer cette action'
      redirect_to :login


      link_to 'mon lien', login_path(tutu: 'toto')
    end
  end
end
