class ApplicationController < ActionController::Base

  def search
  end

  def searchresults
  end

# TEXT FROM BLANK CONTROLLER DOCUMENT:
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
end
