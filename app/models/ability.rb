class Ability
  include CanCan::Ability

  def initialize user

    user ||= User.new

    if user.trainer?
      can :manage, Workout, user_id: user.id
      can :manage, FavoriteWorkout, user_id: user.id

    elsif user.admin?
      can :manage, Workout, user_id: user.id
      can :manage, Exercise

    else
      can :read, :all
    end
  end
end
