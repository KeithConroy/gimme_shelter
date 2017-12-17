class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(shelter_params)

    if @shelter.save
      redirect_to shelter_path(@shelter.id)
    else
      render json: @shelter.errors.full_messages, status: 400
    end
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def edit
    @shelter = Shelter.find(params[:id])
  end

  private

  def shelter_params
    params.require(:shelter).permit(:address_line_1, :address_line_2, :phone_number, :email, :zip_code, :city, :state, :org_name, :subdomain)
  end
end
