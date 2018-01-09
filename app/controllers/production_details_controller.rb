class ProductionDetailsController < ApplicationController
  before_action :set_product_detail, only: [:show, :edit, :update, :destroy]

  # GET /production_details
  # GET /production_details.json
  def index
    @production_details = ProductionDetail.all
  end

  # GET /production_details/1
  # GET /production_details/1.json
  def show
  end

  # GET /production_details/new
  def new
    production_id = params[:prod]
    @production = Production.where(id: production_id).first
    @production_detail = ProductionDetail.new
  end

  # GET /production_details/1/edit
  def edit
  end

  # POST /production_details
  # POST /production_details.json
  def create
    @flag = params[:production_detail][:flag]
    @production_detail = ProductionDetail.new(production_detail_params)

    respond_to do |format|
      if @production_detail.save
        if @flag
          format.html { redirect_to "/production_details/new?prod=" + @product_detail.production_id.to_s, notice: 'Production detail was successfully created.' }
          format.json { render :show, status: :created, location: @production_detail }
        else
          format.html { redirect_to @production_detail, notice: 'Production detail was successfully created.' }
          format.json { render :show, status: :created, location: @production_detail }
        end
      else
        format.html { render :new }
        format.json { render json: @production_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production_details/1
  # PATCH/PUT /production_details/1.json
  def update
    respond_to do |format|
      if @production_detail.update(production_detail_params)
        format.html { redirect_to @production_detail, notice: 'Production detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @production_detail }
      else
        format.html { render :edit }
        format.json { render json: @production_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_details/1
  # DELETE /production_details/1.json
  def destroy
    @production_detail.destroy
    respond_to do |format|
      format.html { redirect_to production_details_url, notice: 'Production detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_detail
      @production_detail = ProductionDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production_detail_params
      params.require(:production_detail).permit(:produciont_id, :type_id, :animal_id, :weight, :weight_control, :observation)
    end
end
