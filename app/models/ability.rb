class Ability
  include CanCan::Ability

  def initialize user

    user ||= User.new

    if user.trainer?
      can :manage, Workout
    else
      can :read, :all
    end
  end
end
