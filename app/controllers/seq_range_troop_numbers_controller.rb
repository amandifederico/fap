class SeqRangeTroopNumbersController < ApplicationController
  before_action :set_seq_range_troop_number, only: [:show, :edit, :update, :destroy]

  # GET /seq_range_troop_numbers
  # GET /seq_range_troop_numbers.json
  def index
    @seq_range_troop_numbers = SeqRangeTroopNumber.all
  end

  # GET /seq_range_troop_numbers/1
  # GET /seq_range_troop_numbers/1.json
  def show
  end

  # GET /seq_range_troop_numbers/new
  def new
    @seq_range_troop_number = SeqRangeTroopNumber.new
  end

  # GET /seq_range_troop_numbers/1/edit
  def edit
  end

  # POST /seq_range_troop_numbers
  # POST /seq_range_troop_numbers.json
  def create
    @seq_range_troop_number = SeqRangeTroopNumber.new(seq_range_troop_number_params)

    respond_to do |format|
      if @seq_range_troop_number.save
        format.html { redirect_to @seq_range_troop_number, notice: 'Seq range troop number was successfully created.' }
        format.json { render :show, status: :created, location: @seq_range_troop_number }
      else
        format.html { render :new }
        format.json { render json: @seq_range_troop_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seq_range_troop_numbers/1
  # PATCH/PUT /seq_range_troop_numbers/1.json
  def update
    respond_to do |format|
      if @seq_range_troop_number.update(seq_range_troop_number_params)
        format.html { redirect_to @seq_range_troop_number, notice: 'Seq range troop number was successfully updated.' }
        format.json { render :show, status: :ok, location: @seq_range_troop_number }
      else
        format.html { render :edit }
        format.json { render json: @seq_range_troop_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seq_range_troop_numbers/1
  # DELETE /seq_range_troop_numbers/1.json
  def destroy
    @seq_range_troop_number.destroy
    respond_to do |format|
      format.html { redirect_to seq_range_troop_numbers_url, notice: 'Seq range troop number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seq_range_troop_number
      @seq_range_troop_number = SeqRangeTroopNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seq_range_troop_number_params
      params.require(:seq_range_troop_number).permit(:rtn)
    end
end
