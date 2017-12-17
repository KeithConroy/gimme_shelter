class AddAdoptedAtToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_column :animals, :adopted_at, :datetime
  end
end
