class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.references :species
      t.string :description
      t.datetime :birthday

      t.timestamps null: false
    end
  end
end
