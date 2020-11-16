class BrandsController < ApplicationController
  def new
    @brand = Brand.new
    authorize @brand
  end

  def create
    @brand = Brand.new(brand_params)
    authorize @brand
    if @brand.save
      redirect_to brand_path(@brand)
    else
      render :new
    end
  end

  def show
    @brand = Brand.find(params[:id])
    authorize @brand
  end

  private

  def brand_params
    params.require(:brand).permit(:name)
  end
end
