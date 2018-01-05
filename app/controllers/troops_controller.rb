#class TroopsController < ApplicationController
  #before_action :set_troop, only: [:show, :edit, :update, :destroy]
#
  ## GET /troops
  ## GET /troops.json
  #def index
    #@troops = Troop.all
  #end
#
  ## GET /troops/1
  ## GET /troops/1.json
  #def show
  #end
#
  ## GET /troops/new
  #def new
    #@troop = Troop.new
  #end
#
  ## GET /troops/1/edit
  #def edit
  #end
#
  ## POST /troops
  ## POST /troops.json
  #def create
    #@troop = Troop.new(troop_params)
#
    #respond_to do |format|
      #if @troop.save
        #format.html { redirect_to @troop, notice: 'Troop was successfully created.' }
        #format.json { render :show, status: :created, location: @troop }
      #else
        #format.html { render :new }
        #format.json { render json: @troop.errors, status: :unprocessable_entity }
      #end
    #end
  #end
#
  ## PATCH/PUT /troops/1
  ## PATCH/PUT /troops/1.json
  #def update
    #respond_to do |format|
      #if @troop.update(troop_params)
        #format.html { redirect_to @troop, notice: 'Troop was successfully updated.' }
        #format.json { render :show, status: :ok, location: @troop }
      #else
        #format.html { render :edit }
        #format.json { render json: @troop.errors, status: :unprocessable_entity }
      #end
    #end
  #end
#
  ## DELETE /troops/1
  ## DELETE /troops/1.json
  #def destroy
    #@troop.destroy
    #respond_to do |format|
      #format.html { redirect_to troops_url, notice: 'Troop was successfully destroyed.' }
      #format.json { head :no_content }
    #end
  #end
#
  #private
    ## Use callbacks to share common setup or constraints between actions.
    #def set_troop
      #@troop = Troop.find(params[:id])
    #end
#
    ## Never trust parameters from the scary internet, only allow the white list through.
    #def troop_params
      #params.require(:troop).permit(:dte, :arrival_date, :arrival_time, :turn_id, :provider_id, :city_id, :troop_number, :cargo_date, :expiration_date, :transport_id, :seal_number, :liveweight, :quantity_control, :close_code)
    #end
#end

class TroopsController < ApplicationController
  before_action :set_troop, only: [:show, :edit, :update, :destroy]

  # GET /troops
  # GET /troop.json
  def index
    @troops = Troop.all
  end

  # GET /troops/1
  # GET /troops/1.json
  def show
  end

  # GET /troops/new
  def new
    @troop = Troop.new
    3.times { @troop.troop_details.build }
  end

  # GET /troops/1/edit
  def edit
  end

  # Post 
  def edit_with_details
   
  end


  # POST /troops
  # POST /troops.json
  def create
     @troop = Troop.new(troop_params)

     respond_to do |format|
       if @troop.save
          @production = Production.new
          @production.troop = @troop
          @production.save!
          format.html { redirect_to @troop, notice: 'troop was successfully created.' }
          format.json { render :show, status: :created, location: @troop }
       else
          format.html { render :new }
          format.json { render json: @troop.errors, status: :unprocessable_entity }
       end
     end
  end

  # PATCH/PUT /troops/1
  # PATCH/PUT /troops/1.json
  def update
    respond_to do |format|
      if @troop.update(troop_params)
        format.html { redirect_to @troop, notice: 'troop was successfully updated.' }
        format.json { render :show, status: :ok, location: @troop }
      else
        format.html { render :edit }
        format.json { render json: @troop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /troops/1
  # DELETE /troops/1.json
  def destroy
    @troop.destroy
    respond_to do |format|
      format.html { redirect_to troops_url, notice: 'troop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_troop
      @troop = Troop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def troop_params
      params.require(:troop).permit(:dte, :turn_id, :provider_id, :city_id, :troop_number, :cargo_date, :expiration_date , :transport_id, :seal_number, :liveweight, :quantity_control, :close_code, :arrival_date, :arrival_time, troop_details_attributes: [:id, :animal_id, :quantity, :observation])
    end
end
