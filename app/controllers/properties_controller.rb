class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @station.property_id = @property.id
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path
  end

  def confirm
    @property = Property.new(property_params)
    @station.property_id = @property.id
  end

  private

  def property_params
    params.require(:property).permit(:name, :age, :price, :address, :age, :option)
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
