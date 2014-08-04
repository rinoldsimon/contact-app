class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = params[:id].blank? ? current_user : User.find(params[:id])
  end

  def follow
  	@user = User.find(params[:user])
	current_user.follow!(@user)
  end

  def unfollow
  	@user = User.find(params[:user])
	current_user.unfollow!(@user)
  end

end
