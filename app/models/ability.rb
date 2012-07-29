class Ability
  include CanCan::Ability

  def initialize user

    user ||= User.new

    if user.trainer?
      can :manage, Workout
    elsif user.admin?
      can :manage, :all
    else
      can :read, :all
    end
  end
end
