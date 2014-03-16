class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(:email => params[:email])
    if user.present?
      if user.password == params[:pwd]
        # COOKIE TO REMEMBER USER
        session[:user_first] = user.user_first
        redirect_to root_url, notice: "Welcome! <%= user.user_first %>"
      else
      redirect_to root_url, notice: "Wrong password, bub."
      end
    else
      redirect_to root_url, notice: "Unknown user.  Please sign up or re-enter email & password."
    end
  end
end
