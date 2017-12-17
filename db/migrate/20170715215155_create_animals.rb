class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :first_name
      t.string :gender
      t.text :bio
      t.string :identification_number
      t.date :arrived_at_shelter
      t.string :age
      t.boolean :is_good_with_kids
      t.boolean :is_good_with_dogs
      t.boolean :is_good_with_cats
      t.string :size
      t.string :color
      t.references :shelter, foreign_key: true
      t.string :animal_type
      t.string :breed

      t.timestamps
    end
  end
end
