class ErrorPrinter
  attr_reader :error_object

  def initialize error_object
  	@error_object = error_object
  	raise "#{@error_object} has no errors" unless @error_object.errors
  end

  def generate_error_list
  	content_tag(:ul) do
  	  @error_object.each do |error_item|
  	  	generate_error_item error_item
  	  end
  	end
  end
end