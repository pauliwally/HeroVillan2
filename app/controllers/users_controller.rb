class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find_by(:id => params[:user_id])
    if @user.id != session[:user_id]
      redirect_to root_url, notice: "Oooops.  You need to register to login."
    else
      redirect_to root_url, notice: "Glad to see you here.  Welcome."
    end
  end

  def create
    user = User.new
    user.user_first = params[:user_first]
    user.user_last = params[:user_last]
    user.email = params[:email]
    user.password = params[:password]
    user.save
    session[:user_id] = user.id
    redirect_to root_url, notice:"Glad to see you at Heroes N Villans.  Now, you can vote and comment on various brands regarding their impact on planet & people."
  end
end
