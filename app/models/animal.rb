class Animal < ApplicationRecord
  belongs_to :shelter

  validates :shelter, :animal_type, :first_name, presence: true

  include AnimalTypes

  SIZES = {
    small: 'small',
    medium: 'medium',
    large: 'large',
    extra_large: 'extra large'
  }

  AGES = {
    baby: 'baby',
    young: 'young',
    adult: 'adult',
    senior: 'senior'
  }
end
