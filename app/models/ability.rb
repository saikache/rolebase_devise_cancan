class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    # if user.role == "SuperAdmin"
    #     can :manage, :all
    # end
     can :manage, :all if user.role == "SuperAdmin"

     can :read, :all if user.role == "customer"

     can :read, :all if user.role == "user"
  end
end
