class RemoveNullFromStation < ActiveRecord::Migration[5.0]
  def change
    remove_column :stations, :null
  end
end
