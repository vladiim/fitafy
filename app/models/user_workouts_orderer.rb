class UserWorkoutsOrderer
  attr_accessor :user, :muscles, :page

  def initialize user, params
  	@user = user
    params_empty?(params) ? set_nil_params : set_params(params)
  end

  def get_workouts
  	are_there_muscles? ? filter_by_muscles_and_params : filter_by_params
  end

  private

  def params_empty?(params)
  	begin
  	  params.fetch('muscles') && params.fetch('page')
  	rescue KeyError
  	  return true
    end

    return false
  end

  def set_nil_params
  	@muscles, @page = nil, 0
  end

  def set_params(params)
  	@muscles, @page = params.fetch('muscles'), params.fetch('page').to_i 
  end

  def are_there_muscles?
  	@muscles != nil
  end

  def filter_by_muscles_and_params
  	user.workouts.find_by_exercise_muscles(@muscles).offset_by_page(@page)
  end

  def filter_by_params
  	user.workouts.scoped.offset_by_page(@page)
  end
end