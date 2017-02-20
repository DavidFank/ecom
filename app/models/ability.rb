class Ability
  include CanCan::Ability

  def initialize(user)

    if user.nil?

        can :destroy, LineItem

    elsif user.admin?

        can :manage, Product
        can :manage, Category
        can :manage, Order
        can :manage, LineItem

    elsif user.guest?
        can :destroy, LineItem
    end
end
            
            

end
