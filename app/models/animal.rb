class Animal < ApplicationRecord
  belongs_to :shelter

  validates :shelter, :animal_type, :first_name, presence: true

  include AnimalTypes

  SIZES = {
    small: 'Small',
    medium: 'Medium',
    large: 'Large',
    extra_large: 'Extra Large'
  }

  AGES = {
    baby: 'Baby',
    young: 'Young',
    adult: 'Adult',
    senior: 'Senior'
  }

  GENDERS = {
    male: 'Male',
    female: 'Female',
    unknown: 'Unknown'
  }
end
