class UsersController < ApplicationController
  def home
  end

  def login
  end

  def check
  	@current_user = User.where()
end
