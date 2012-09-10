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
  end

  def edit
  	@equipment = Equipment.find(params[:id])
  end
end