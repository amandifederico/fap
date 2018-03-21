class TroopsController < ApplicationController
  before_action :set_troop, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
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
    #range = RangeTroopNumber.last
    
    #seq = SeqRangeTroopNumber.last
    #if seq == nil
    #  number = range.min
    #elsif seq.rtn < range.max
    #  if seq.rtn >= range.min
    #    number = seq.rtn + 1
    #  else
    #    number = range.min
    #  end
    #else
    #  number = -1
    #end
    #@troop.attributes = {troop_number: number}
    
  end

  def new_troop_ajax
    respond_to do |format|
      format.html
      format.js
    end
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
     #number = params[:troop][:number].to_i
     respond_to do |format|
       if @troop.save
          @production = Production.new
          @production.troop = @troop
          @production.save!
          #sequence = SeqRangeTroopNumber.new
          #sequence.rtn = number
          #sequence.save!
          format.html { redirect_to @troop, notice: 'Tropa exitosamente creada.' }
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
        format.html { redirect_to @troop, notice: 'Tropa exitosamente actualizada.' }
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
      format.html { redirect_to troops_url, notice: 'Tropa exitosamente borrada.' }
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
      params.require(:troop).permit(:dte, :turn_id, :provider_id, :city_id, :troop_number, :cargo_date, :expiration_date , :transport_id, :driver_id, :seal_number, :liveweight, :quantity_control, :close_code, :arrival_date, :arrival_time, troop_details_attributes: [:id, :_destroy, :animal_id, :quantity, :fallen, :observartion])
    end
end
