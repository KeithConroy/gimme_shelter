class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      redirect_to animal_path(@animal.id)
    else
      render json: @animal.errors.full_messages, status: 400
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  private

  def animal_params
    params.require(:animal).permit(:first_name, :gender, :bio, :identification_number, :arrived_at_shelter, :age, :is_good_with_kids, :is_good_with_dogs, :is_good_with_cats, :size, :color, :animal_type, :breed)
  end
end
