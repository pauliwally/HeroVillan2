class HeroesnvillansController < ApplicationController

  def index
    @brands_list = Brand.all
    @companies_list = Company.all
  end

  def show
    @brand = Brand.find_by(:id => params[:brand_id])
    @reviews = Review.where(:brand_id => params[:brand_id])
  end


  def search
  end

  def searchresults
  end

end
