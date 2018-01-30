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

    if user.PlantaA?
        can :index, Production
        can :show, Production

        can :create, ProductionDetail
        can :index, ProductionDetail
        can :show, ProductionDetail
        can :edit, ProductionDetail
        can :update, ProductionDetail
    end

    if user.PlantaB?
        can :index, Production
        can :show, Production

        can :create, ProductionDetail
        can :index, ProductionDetail
        can :show, ProductionDetail
        can :edit, ProductionDetail
        can :update, ProductionDetail
    end
    
    if user.SubA?
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

    if user.SubB?
        can :index, SubProduct
        can :show, SubProduct

        can :index, SubProductDetail
        can :show, SubProductDetail
        can :edit, SubProductDetail
        can :update, SubProductDetail
    end

    if user.Garita?
        can :create, Troop
        can :index, Troop
        can :show, Troop
        can :edit, Troop
        can :update, Troop
    end

    if user.Corral?
        can :create, Troop
        can :index, Troop
        can :show, Troop
        can :edit, Troop
        can :update, Troop
    end

    if user.Oficina?
        can :create, Troop
        can :index, Troop
        can :show, Troop
        can :edit, Troop
        can :update, Troop
    end

  end
end
