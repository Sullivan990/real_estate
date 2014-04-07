class BuildingsController < ApplicationController

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params.merge(user: current_user))
    if @building.save
      flash[:notice] = 'Success! Your building was saved.'
      redirect_to building_path(@building)
    else
      flash[:notice] = 'Movie could not be saved'
      render :new
    end
  end

  def index
    @building = Building.all
  end

end
