class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.string :address, null: false
      t.integer :age, null: false
      t.string :option, null: false

      t.timestamps :null
    end
  end
end
