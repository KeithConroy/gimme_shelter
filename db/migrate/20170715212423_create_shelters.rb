class CreateShelters < ActiveRecord::Migration[5.1]
  def change
    create_table :shelters do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.string :phone_number
      t.string :email
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :org_name
      t.string :subdomain

      t.timestamps
    end
  end
end
