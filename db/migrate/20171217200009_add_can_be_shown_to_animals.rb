class AddCanBeShownToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_column :animals, :can_be_shown, :boolean
  end
end
