class AddLocationToAnimal < ActiveRecord::Migration
  def change
    add_column :animals, :location_id, :integer
  end
end
