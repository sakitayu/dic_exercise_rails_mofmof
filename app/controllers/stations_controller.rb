class StationsController < ApplicationController

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    redirect_to edit_property_path(params[:property_id])
  end

end
