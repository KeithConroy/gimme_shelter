module AnimalsHelper
  def animal_types_for_select
    Animal::ANIMAL_TYPES.keys.collect{|t| [t.to_s.humanize, t]}
  end

  def animal_sizes_for_select
    Animal::SIZES.values
  end

  def animal_ages_for_select
    Animal::AGES.values
  end

  def animal_genders_for_select
    Animal::GENDERS.values
  end
end
