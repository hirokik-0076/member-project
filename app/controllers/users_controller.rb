class UsersController < ApplicationController
  before_action :logged_in_user

  def show
    @user = User.find(params[:id])
  end
  
  def new
     @user = User.new
  end
end
