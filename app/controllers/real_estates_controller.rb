class RealEstatesController < ApplicationController
  before_action :set_real_estate, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
    
  respond_to :html

  def index
    @real_estates = RealEstate.all
    respond_with(@real_estates)
  end

  def show
    @real_estate = RealEstate.find(params[:id])
    respond_with(@real_estate)
  end

  def new
    @real_estate = RealEstate.new
    respond_with(@real_estate)
  end

  def edit
  end

  def create
    @real_estate = RealEstate.new(real_estate_params)
    @real_estate.save
    respond_with(@real_estate)
  end

  def update
    @real_estate.update(real_estate_params)
    respond_with(@real_estate)
  end

  def destroy
    @real_estate.destroy
    respond_with(@real_estate)
  end

  private
    def set_real_estate
      @real_estate = current_user.real_estates.find(params[:id])
    end

    def real_estate_params
      params.require(:real_estate).permit(:price, :description, :state, :address, :longitude, :latitude, :kind, :picture)
    end
end
