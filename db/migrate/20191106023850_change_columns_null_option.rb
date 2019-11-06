class ChangeColumnsNullOption < ActiveRecord::Migration[5.0]
  def change
    change_column :properties, :name, :string, null: false
    change_column :properties, :price, :integer, null: false
    change_column :properties, :address, :string, null: false
    change_column :properties, :age, :integer, null: false
    change_column :properties, :option, :string, null: false
    change_column :stations, :route_name, :string, null: false
    change_column :stations, :station_name, :string, null: false
    change_column :stations, :span, :integer, null: false
  end
end
