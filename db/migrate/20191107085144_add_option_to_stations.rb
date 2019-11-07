class AddOptionToStations < ActiveRecord::Migration[5.0]
  def change
    change_column_null :stations, :route_name, :string, false
    change_column_null :stations, :station_name, :string, false
    change_column_null :stations, :span, :integer, false
  end
end
