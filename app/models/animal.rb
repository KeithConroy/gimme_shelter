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

  scope :adoptable, -> { where(can_be_shown: true, adopted_at: nil) }
  scope :adopted, -> { where.not(adopted_at: nil) }

  ANIMAL_TYPES.keys.each do |key|
    scope key, -> { where(animal_type: key) }
  end

  SIZES.each do |key, value|
    scope key, -> { where(size: value) }
  end

  AGES.each do |key, value|
    scope key, -> { where(age: value) }
  end

  GENDERS.each do |key, value|
    scope key, -> { where(gender: value) }
  end
end
