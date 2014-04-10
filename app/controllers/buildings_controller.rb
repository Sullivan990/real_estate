class BuildingsController < ApplicationController
  def new
    @building = Building.new
  end

  def create
    @building = Building.new(params.require(:building)
        .permit(:street_address, :city, :state, :postal_code, :owner_id))

    if @building.save
      redirect_to new_building_path, notice: 'Building successfully added.'
    else
      render :new
    end
  end
end
