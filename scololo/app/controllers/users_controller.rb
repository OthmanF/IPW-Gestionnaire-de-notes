class UsersController < ApplicationController
  def home
  end

  def login
  end

  def check
  	@current_user = User.where(email: params[:email], password: params[:password]).first
  	if @current_user
  		flash[:info] = "Bienveny #{@current_user.firstName} #{@current_user.familyName}"
  		redirect_to "/users"
  	else
  		flash[:info] = "Échec de la connexion"
  		redirect_to "/users/login"
  	end
  end
end
