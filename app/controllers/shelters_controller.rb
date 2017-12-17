class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def new
    @shelter = Shelter.new
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def edit
    @shelter = Shelter.find(params[:id])
  end
end
