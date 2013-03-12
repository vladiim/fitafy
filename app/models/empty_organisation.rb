class EmptyOrganisation
  VARS = %w[city country postcode state street suburb]

  def name
  	'No gym listed'
  end

  VARS.each do |var|
  	attr_accessor var
  	var = ''
  end
end