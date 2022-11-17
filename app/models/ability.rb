# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(current_user)
    return unless current_user.present?
    can :manage, Group, user: current_user
    can :manage, Payment, author: current_user
    can :manage, User, id: current_user.id
  end
end
