class VehiculsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_vehicul, only: [:show, :edit, :update, :destroy]

  # GET /vehiculs
  # GET /vehiculs.json
  def index
    @vehiculs = Vehicul.all
  end

  # GET /vehiculs/1
  # GET /vehiculs/1.json
  def show
  end

  # GET /vehiculs/new
  def new
    @vehicul = Vehicul.new
    @vehicul.user_id = current_user.id
  end

  # GET /vehiculs/1/edit
  def edit
  end

  # POST /vehiculs
  # POST /vehiculs.json
  def create
    @vehicul = Vehicul.new(vehicul_params)

    respond_to do |format|
      if @vehicul.save
        format.html { redirect_to @vehicul, notice: 'Vehicul was successfully created.' }
        format.json { render :show, status: :created, location: @vehicul }
      else
        format.html { render :new }
        format.json { render json: @vehicul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehiculs/1
  # PATCH/PUT /vehiculs/1.json
  def update
    respond_to do |format|
      if @vehicul.update(vehicul_params)
        format.html { redirect_to @vehicul, notice: 'Vehicul was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicul }
      else
        format.html { render :edit }
        format.json { render json: @vehicul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehiculs/1
  # DELETE /vehiculs/1.json
  def destroy
    @vehicul.destroy
    respond_to do |format|
      format.html { redirect_to vehiculs_url, notice: 'Vehicul was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicul
      @vehicul = Vehicul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicul_params
      params.require(:vehicul).permit(:name, :brand, :category, :km, :user_id)
    end
end
