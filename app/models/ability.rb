# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    elsif user.student?
      can :read, :all
    elsif user.teacher?
      can :manage, :student
      can :read, :all
    else
      can :read, :all
    end
  end
end
