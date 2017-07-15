class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :species
      t.string :breed
      t.string :first_name
      t.string :gender
      t.text :bio
      t.string :identification_number
      t.date :arrived_at_shelter
      t.integer :age
      t.boolean :is_good_with_kids
      t.boolean :is_good_with_dogs
      t.boolean :is_good_with_cats
      t.integer :size
      t.references :shelter_id, foreign_key: true

      t.timestamps
    end
  end
end
