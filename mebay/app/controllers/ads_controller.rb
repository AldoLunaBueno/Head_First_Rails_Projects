class AdsController < ApplicationController

  before_action :check_logged_in, :only => [:edit, :update, :destroy]

  def show
    @ad = Ad.find(params[:id])
  end
  
  def index
    @ads = Ad.all
  end
  
  def new
    @ad = Ad.new
  end
  
  def create
    @ad = Ad.new(ad_params)
    # @ad.save
    # redirect_to "/ads/#{@ad.id}"
    if @ad.save
      redirect_to "/ads/#{@ad.id}"
    else
      render 'new'
    end
  end
  
  def edit
    @ad = Ad.find(params[:id])
  end
  
  def update
    @ad = Ad.find(params[:id])
    # @ad.update(ad_params)
    # redirect_to "/ads/#{@ad.id}"
    if @ad.update(ad_params)
      redirect_to "ads/#{@ad.id}"
    else
      render :edit
    end
  end
  
  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    redirect_to "/ads/"
  end
  
  private
  def ad_params
    params.require(:ad).permit(:name, :price, :description, :seller_id, :email, :img_url)
  end
  
  private
  def check_logged_in
    authenticate_or_request_with_http_basic("Ads") do |username, password|
      username == "admin" && password == "123"
    end
  end

end
