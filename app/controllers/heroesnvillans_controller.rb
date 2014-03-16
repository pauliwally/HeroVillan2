class HeroesnvillansController < ApplicationController

  def index
    if params[:cat].present?
    filter_category = Category.find_by(:category_name => params[:cat])
    @brands_list = Brand.all.where(:category_id => filter_category.id)
    @brands_list = @brands_list.order('brand_name asc')
    else
    @brands_list = Brand.all.order('brand_name asc')
  end
end

# CREATE COMPANY INDEX PAGE
  # @companies_list = Company.all

  def show
    @brand = Brand.find_by(:id => params[:brand_id])
    @reviews = Review.where(:brand_id => params[:brand_id])
    @reviews_hero = Review.where(:brand_id => params[:brand_id]).where(:hero_vote => 1)
    @reviews_villan = Review.where(:brand_id => params[:brand_id]).where(:villan_vote => 1)
    @brand_news = params[:brand_name]

    # GET WIKIPEDIA DESCRIPTION ONTO SHOW PAGE
    # url = URI.escape("https://en.wikipedia.org/wiki/{brand_name}")
    # @json_data = open(url).read
    # @data = JSON.parse(@json_data)
    # puts data.class
    # puts data.inspect

# TRYING TO GET NEWS FROM REDDIT TO SHOW UP WITH BRANDS.  SEE VIEW SHOW.
    # url = URI.escape("http://www.reddit.com/search?q={brand_name}")
    # @json_data = open(url).read
    # @data = JSON.parse(@json_data)
    # puts data.class
    # puts data.inspect

  end

 def create
    review = Review.new
    review.brand_id = params["brand_id"]
    review.user_id = params[:user_id]
    review.comment = params["comment"]
    if params["vote"] == "1"
      review.hero_vote = 1
    else
      review.villan_vote = 1
    end
    review.save
    redirect_to "/brands/" + params["brand_id"] + "/show"
  end

  def search
  end

  def searchresults
  end

end

