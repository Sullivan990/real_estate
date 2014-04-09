class BuildingsController < ApplicationController
<<<<<<< HEAD

=======
>>>>>>> 2e8b5625662d36b73d22295919c15f792e705a37
  def new
    @building = Building.new
  end

  def create
<<<<<<< HEAD
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

=======
    @building = Building.new(params.require(:building)
        .permit(:street_address, :city, :state, :postal_code))

    if @building.save
      redirect_to new_building_path, notice: 'Building successfully added.'
    else
      render :new
    end
  end
>>>>>>> 2e8b5625662d36b73d22295919c15f792e705a37
end
