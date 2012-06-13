module AttrSerializer

  # note the method below may be wrong for what i want
  # i want an array of hashes to be processed
  # http://stackoverflow.com/questions/1002963/how-to-edit-a-rails-serialized-field-in-a-form

  def self.serialized_attr_accessor *args
    args.each do |method_name|
      serialized_getter method_name
      serialized_setter method_name
    end
  end

  # def serialized_getter method_name
  #   eval "
  #     def #{method_name}
  #       (self.exercises || {})[:#{method_name}]
  #     end
  #   "    
  # end

  # def serialized_setter method_name
  #   eval "
  #     def #{method_name}=(value)
  #       self.exercises ||= {}
  #       self.exercises[:#{method_name}] = value
  #     end
  #   "
  # end
end