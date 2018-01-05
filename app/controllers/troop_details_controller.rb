#class TroopDetailsController < ApplicationController
  #before_action :set_troop_detail, only: [:show, :edit, :update, :destroy]
#
  ## GET /troop_details
  ## GET /troop_details.json
  #def index
    #@troop_details = TroopDetail.all
  #end
#
  ## GET /troop_details/1
  ## GET /troop_details/1.json
  #def show
  #end
#
  ## GET /troop_details/new
  #def new
    #@troop_detail = TroopDetail.new
  #end
#
  ## GET /troop_details/1/edit
  #def edit
  #end
#
  ## POST /troop_details
  ## POST /troop_details.json
  #def create
    #@troop_detail = TroopDetail.new(troop_detail_params)
#
    #respond_to do |format|
      #if @troop_detail.save
        #format.html { redirect_to @troop_detail, notice: 'Troop detail was successfully created.' }
        #format.json { render :show, status: :created, location: @troop_detail }
      #else
        #format.html { render :new }
        #format.json { render json: @troop_detail.errors, status: :unprocessable_entity }
      #end
    #end
  #end
#
  ## PATCH/PUT /troop_details/1
  ## PATCH/PUT /troop_details/1.json
  #def update
    #respond_to do |format|
      #if @troop_detail.update(troop_detail_params)
        #format.html { redirect_to @troop_detail, notice: 'Troop detail was successfully updated.' }
        #format.json { render :show, status: :ok, location: @troop_detail }
      #else
        #format.html { render :edit }
        #format.json { render json: @troop_detail.errors, status: :unprocessable_entity }
      #end
    #end
  #end
#
  ## DELETE /troop_details/1
  ## DELETE /troop_details/1.json
  #def destroy
    #@troop_detail.destroy
    #respond_to do |format|
      #format.html { redirect_to troop_details_url, notice: 'Troop detail was successfully destroyed.' }
      #format.json { head :no_content }
    #end
  #end
#
  #private
    ## Use callbacks to share common setup or constraints between actions.
    #def set_troop_detail
      #@troop_detail = TroopDetail.find(params[:id])
    #end
#
    ## Never trust parameters from the scary internet, only allow the white list through.
    #def troop_detail_params
      #params.require(:troop_detail).permit(:troop_id, :animal_id, :quantity, :fallen, :observartion)
    #end
#end
class TroopDetailsController < ApplicationController
  before_action :set_troop_detail, only: [:show, :edit, :update, :destroy]

  # GET /troop_details
  # GET /troop_details.json
  def index
    @troop_details = TroopDetail.all
  end

  # GET /troop_details/1
  # GET /troop_details/1.json
  def show
  end

  # GET /troop_details/new
  def new
    @troop_detail = TroopDetail.new
  end

  # GET /troop_details/1/edit
  def edit
  end

  # POST /troop_details
  # POST /troop_details.json
  def create
    @troop_detail = TroopDetail.new(troop_detail_params)

    respond_to do |format|
      if @troop_detail.save
        format.html { redirect_to @troop_detail, notice: 'troop detail was successfully created.' }
        format.json { render :show, status: :created, location: @troop_detail }
      else
        format.html { render :new }
        format.json { render json: @troop_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /troop_details/1
  # PATCH/PUT /troop_details/1.json
  def update
    respond_to do |format|
      if @troop_detail.update(troop_detail_params)
        format.html { redirect_to @troop_detail, notice: 'troop detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @troop_detail }
      else
        format.html { render :edit }
        format.json { render json: @troop_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /troop_details/1
  # DELETE /troop_details/1.json
  def destroy
    @troop_detail.destroy
    respond_to do |format|
      format.html { redirect_to troop_details_url, notice: 'troop detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_troop_detail
      @troop_detail = TroopDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def troop_detail_params
      params.require(:troop_detail).permit(:troop_id, :animal_id, :quantity, :fallen, :observation)
    end
end
