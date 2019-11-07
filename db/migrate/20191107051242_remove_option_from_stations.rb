class RemoveOptionFromStations < ActiveRecord::Migration[5.0]
  def change
    change_column :stations, :route_name, :string, null: true
    change_column :stations, :station_name, :string, null: true
    change_column :stations, :span, :integer, null: true
  end
end
