class PortablesController < ApplicationController
  before_action :set_portable, only: [:show, :edit, :update, :destroy]

  # GET /portables
  # GET /portables.json
  def index
    @portables = Portable.all
  end

  # GET /portables/1
  # GET /portables/1.json
  def show
  end

  # GET /portables/new
  def new
    @portable = Portable.new
  end

  # GET /portables/1/edit
  def edit
  end

  # POST /portables
  # POST /portables.json
  def create
    @portable = Portable.new(portable_params)

    respond_to do |format|
      if @portable.save
        format.html { redirect_to @portable, notice: 'Portable was successfully created.' }
        format.json { render :show, status: :created, location: @portable }
      else
        format.html { render :new }
        format.json { render json: @portable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portables/1
  # PATCH/PUT /portables/1.json
  def update
    respond_to do |format|
      if @portable.update(portable_params)
        format.html { redirect_to @portable, notice: 'Portable was successfully updated.' }
        format.json { render :show, status: :ok, location: @portable }
      else
        format.html { render :edit }
        format.json { render json: @portable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portables/1
  # DELETE /portables/1.json
  def destroy
    @portable.destroy
    respond_to do |format|
      format.html { redirect_to portables_url, notice: 'Portable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portable
      @portable = Portable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portable_params
      params.require(:portable).permit(:no_serie, :marque, :etudiant_id)
    end
end
