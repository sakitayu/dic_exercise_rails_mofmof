class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :route_name, :null
      t.string :station_name, :null
      t.integer :span, :null
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
