class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
    if params[:search]
      @destinations = Destination.search(params[:search])
    else
      @destinations = Destination.all
    end
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new
    @destination.places.build(name: 'placeholder')
    @categories = Category.all
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.valid?
      @destination.save
      redirect_to @destination
    else
      # add error message
      render :new
  end
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
      @destination = Destination.find(params[:id])
      @destination.places.build
      if @destination.update(destination_params)
        redirect_to @destination
      else
        render :show
      end
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    redirect_to destinations_url
  end

  private

  def destination_params
    params.require(:destination).permit(:city, :country, :tagline, :summary, :category_ids => [])
  end

end
