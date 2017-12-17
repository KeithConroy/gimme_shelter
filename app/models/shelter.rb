class Shelter < ApplicationRecord
  validates :address_line_1, :address_line_2, :phone_number, :email, :zip_code, :city, :state, :org_name, presence: true
  validates :email, uniqueness: true
end
