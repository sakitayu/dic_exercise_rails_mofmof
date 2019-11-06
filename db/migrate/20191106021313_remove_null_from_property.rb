class RemoveNullFromProperty < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :null
  end
end
