class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :name, :null
      t.integer :price, :null
      t.string :address, :null
      t.integer :age, :null
      t.string :option, :null

      t.timestamps :null
    end
  end
end
