class ContactImporterRecordsController < ApplicationController
  respond_to :json

  def index
  	@records = CopyGenerator::ContactImporterRecordsCopy.all
  	render json: @records
  end
end