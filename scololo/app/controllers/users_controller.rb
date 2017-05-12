class UsersController < ApplicationController
  def home
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end      
  end

  def login
  end

  def check
  	@current_user = User.where(email: params[:email], password: params[:password]).first
  	if @current_user
  		flash[:info] = "Vous êtes maintenant connecté"
  		session[:user_id] = @current_user.id
      redirect_to "/users"
  	else
  		flash[:info] = "Échec de la connexion"
  		redirect_to "/users/login"
  	end
  end

  def logout
    session[:user_id] = nil
    flash[:info] = "Vous vous êtes déconnecté "
    redirect_to "/users"
  end

  def signin
  end

  def create
    User.create familyName: params[:familyName] , firstName: params[:firstName], email: params[:email], password: params[:password] 
    flash[:info] = "Création réussite du compte !"
    session[:user_id] = User.last.id
    redirect_to "/users" 
  end
end
