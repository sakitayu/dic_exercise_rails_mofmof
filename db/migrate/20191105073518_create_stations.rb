class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|

      t.timestamps
    end
  end
end
