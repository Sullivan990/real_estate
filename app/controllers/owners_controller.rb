class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(params.require(:owner)
        .permit(:first_name, :last_name, :email, :company_name))

    if @owner.save
      redirect_to new_owner_path, notice: 'Owner successfully added.'
    else
      render :new
    end
  end
end
