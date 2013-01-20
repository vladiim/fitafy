class UserWorkoutsOrderer
  attr_accessor :user, :muscles, :page

  def initialize user, params
  	@user = user
    set_params(params)
  end

  def get_workouts
  	are_there_muscles? ? filter_by_muscles_and_params : filter_by_params
  end

  private

  def set_params(params)
  	set_muscles(params)
    set_page(params)
  end

  def set_muscles(params)
    @muscles = begin
      params.fetch('muscles')
    rescue KeyError
      nil
    end
  end

  def set_page(params)
    @page = begin
      params.fetch('page').to_i 
    rescue KeyError
      0
    end
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