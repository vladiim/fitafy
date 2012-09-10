class EquipmentController < ApplicationController

  # before_filter :load_and_authorize_resource

  def new
  	@title     = "NEW EQUIPMENT"
  	@equipment = Equipment.new
  end

  def create
  	@equipment = Equipment.new(params[:equipment])
  	if @equipment.save
  	  flash[:success] = SnapzSayz::EquipmentSpeak.create
  	  redirect_to @equipment
  	else
      render :new
  	end
  end

  def show
  	@equipment = Equipment.find(params[:id])
  	@title     = @equipment.name
  end

  def edit
  	@title         = "EDIT EQUIPMENT"
  	@snapz_message = SnapzSayz::EquipmentSpeak.confirm_delete
  	@equipment     = Equipment.find(params[:id])
  end

  def update
  	@equipment = Equipment.find(params[:id])
  	if @equipment.update_attributes(params[:equipment])
      flash[:success] = SnapzSayz::EquipmentSpeak.update
      redirect_to @equipment
  	else
      render :edit
  	end
  end

  def destroy
  	Equipment.find(params[:id]).destroy
  	flash[:success] = SnapzSayz::EquipmentSpeak.delete
  	redirect_to root_path
  end
end