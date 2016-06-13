class AchatEssencesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_achat_essence, only: [:show, :edit, :update, :destroy]

  # GET /achat_essences
  # GET /achat_essences.json
  def index
    @achat_essences = AchatEssence.all
  end

  # GET /achat_essences/1
  # GET /achat_essences/1.json
  def show
  end

  # GET /achat_essences/new
  def new
    @achat_essence = AchatEssence.new
    @achat_essence.vehicul_id = params[:vehicul_id]
  end

  # GET /achat_essences/1/edit
  def edit
  end

  # POST /achat_essences
  # POST /achat_essences.json
  def create
    @achat_essence = AchatEssence.new(achat_essence_params)

    respond_to do |format|
      if @achat_essence.save
        vehicul = Vehicul.find(@achat_essence.vehicul_id)
        gas_station_type_tmp = GasStationType.find_by("gas_station_id = ? AND gas_type_id = ?", @achat_essence.gas_station_id, vehicul.gas_type_id)
        attributes = {:price => @achat_essence.price_per_liter, :date => DateTime.now}
        gas_station_type_tmp.update_attributes(attributes)
        format.html { redirect_to @achat_essence, notice: 'Achat essence was successfully created.' }
        format.json { render :show, status: :created, location: @achat_essence }
      else
        format.html { render :new }
        format.json { render json: @achat_essence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /achat_essences/1
  # PATCH/PUT /achat_essences/1.json
  def update
    respond_to do |format|
      if @achat_essence.update(achat_essence_params)
        vehicul = Vehicul.find(@achat_essence.vehicul_id)
        gas_station_type_tmp = GasStationType.find_by("gas_station_id = ? AND gas_type_id = ?", @achat_essence.gas_station_id, vehicul.gas_type_id)
        attributes = {:price => @achat_essence.price_per_liter, :date => DateTime.now}
        gas_station_type_tmp.update_attributes(attributes)
        format.html { redirect_to @achat_essence, notice: 'Achat essence was successfully updated.' }
        format.json { render :show, status: :ok, location: @achat_essence }
      else
        format.html { render :edit }
        format.json { render json: @achat_essence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /achat_essences/1
  # DELETE /achat_essences/1.json
  def destroy
    vehicul_id = @achat_essence.vehicul_id
    @achat_essence.destroy
    respond_to do |format|
      format.html { redirect_to achat_essences_path(:vehicul_id => vehicul_id), notice: 'Achat essence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_achat_essence
      @achat_essence = AchatEssence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def achat_essence_params
      params.require(:achat_essence).permit(:km_traveled, :liters, :price_per_liter, :vehicul_id, :gas_station_id)
    end
end
