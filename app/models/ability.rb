class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    
    if user.admin?
        can :manage, :all
    end

    if user.A?
        can :create, Agent
        can :index, Agent
        can :show, Agent
        can :edit, Agent
        can :update, Agent

        #can :create, Animal
        #can :index, Animal
        #can :show, Animal
        #can :edit, Animal
        #can :update, Animal

        #can :create, Race
        #can :index, Race
        #can :show, Race
        #can :edit, Race
        #can :update, Race

        can :create, Turn
        can :index, Turn
        can :show, Turn
        can :edit, Turn
        can :update, Turn

        can :create, TurnDetail
        can :index, TurnDetail
        can :show, TurnDetail
        can :edit, TurnDetail
        can :update, TurnDetail

        can :create, Troop
        can :index, Troop
        can :show, Troop
        can :edit, Troop
        can :update, Troop

        can :create, TroopDetail
        can :index, TroopDetail
        can :show, TroopDetail
        can :edit, TroopDetail
        can :update, TroopDetail

        can :create, Transport
        can :index, Transport
        can :show, Transport
        can :edit, Transport
        can :update, Transport

        can :create, City
        can :index, City
        can :show, City
        can :edit, City
        can :update, City

        can :create, Provider
        can :index, Provider
        can :show, Provider
        can :edit, Prodvider
        can :update, Provider
    end

    if user.B?
        can :create, Production
        can :index, Production
        can :show, Production
        can :edit, Production
        can :update, Production

        can :create, ProductionDetail
        can :index, ProductionDetail
        can :show, ProductionDetail
        can :edit, ProductionDetail
        can :update, ProductionDetail
    end
    
    if user.C?
        can :create, SubProduct
        can :index, SubProduct
        can :show, SubProduct
        can :edit, SubProduct
        can :update, Product

        can :create, SubProductDetail
        can :index, SubProductDetail
        can :show, SubProductDetail
        can :edit, SubProductDetail
        can :update, SubProductDetail

        can :index, SubProductType
        can :show, SubProductType
        can :edit, SubProductType
        can :update, SubProductType
    end   


    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
