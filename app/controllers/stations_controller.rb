class StationsController < ApplicationController

  def destroy
    @station = Station.find(params[:id])
    #@property = Property.find(params[:property_id])
    @station.destroy
    redirect_to property_path(params[:property_id])
  end

end
