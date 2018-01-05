#class ProductionsController < ApplicationController
  #before_action :set_production, only: [:show, :edit, :update, :destroy]
#
  ## GET /productions
  ## GET /productions.json
  #def index
    #@productions = Production.all
  #end
#
  ## GET /productions/1
  ## GET /productions/1.json
  #def show
  #end
#
  ## GET /productions/new
  #def new
    #@production = Production.new
  #end
#
  ## GET /productions/1/edit
  #def edit
  #end
#
  ## POST /productions
  ## POST /productions.json
  #def create
    #@production = Production.new(production_params)
#
    #respond_to do |format|
      #if @production.save
        #format.html { redirect_to @production, notice: 'Production was successfully created.' }
        #format.json { render :show, status: :created, location: @production }
      #else
        #format.html { render :new }
        #format.json { render json: @production.errors, status: :unprocessable_entity }
      #end
    #end
  #end
#
  ## PATCH/PUT /productions/1
  ## PATCH/PUT /productions/1.json
  #def update
    #respond_to do |format|
      #if @production.update(production_params)
        #format.html { redirect_to @production, notice: 'Production was successfully updated.' }
        #format.json { render :show, status: :ok, location: @production }
      #else
        #format.html { render :edit }
        #format.json { render json: @production.errors, status: :unprocessable_entity }
      #end
    #end
  #end
#
  ## DELETE /productions/1
  ## DELETE /productions/1.json
  #def destroy
    #@production.destroy
    #respond_to do |format|
      #format.html { redirect_to productions_url, notice: 'Production was successfully destroyed.' }
      #format.json { head :no_content }
    #end
  #end
#
  #private
    ## Use callbacks to share common setup or constraints between actions.
    #def set_production
      #@production = Production.find(params[:id])
    #end
#
    ## Never trust parameters from the scary internet, only allow the white list through.
    #def production_params
      #params.require(:production).permit(:troop_id, :description)
    #end
#end
class ProductionsController < ApplicationController
  before_action :set_production, only: [:show, :edit, :update, :destroy]

  # GET /production
  # GET /production.json
  def index
    @productions = Production.all
  end

  # GET /production/1
  # GET /production/1.json
  def show
  end

  # GET /production/new
  def new
    @production = Production.new
    3.times { @production.production_details.build }
  end

  # GET /production/1/edit
  def edit
  end

    # Post 
  def edit_with_details
   
  end

  # POST /production
  # POST /production.json
  def create

    @production = Production.new(product_params)

    respond_to do |format|
      if @production.save
        format.html { redirect_to @product, notice: 'Production was successfully created.' }
        format.json { render :show, status: :created, location: @production }
      else
        format.html { render :new }
        format.json { render json: @production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production/1
  # PATCH/PUT /production/1.json
  def update
    respond_to do |format|
      if @production.update(product_params)
        format.html { redirect_to @production, notice: 'Production was successfully updated.' }
        format.json { render :show, status: :ok, location: @production }
      else
        format.html { render :edit }
        format.json { render json: @production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production/1
  # DELETE /production/1.json
  def destroy
    @production.destroy
    respond_to do |format|
      format.html { redirect_to production_url, notice: 'Production was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production
      @production = Production.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production_params
      params.require(:production).permit(:troop_id, :description, production_details_attributes: [:id, :weight, :weight_control, :observation])
    end
end