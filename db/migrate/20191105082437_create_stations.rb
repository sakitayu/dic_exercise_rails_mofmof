class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :route_name
      t.string :station_name
      t.integer :span
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
