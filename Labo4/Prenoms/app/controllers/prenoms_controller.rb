class PrenomsController < ApplicationController
  before_action :set_prenom, only: [:show, :edit, :update, :destroy]

  def dire_heure
    @heure_actuelle=DateTime.now
    respond_to do |format|
      format.html
      format.js
    end
  end

  def recherche_prenom
    texte_a_rechercher = params[:texte] #Extraction du paramètre 'texte'
    @prenoms_recherches=Prenom.where("texte like '%#{texte_a_rechercher}%'")
    render :partial => "recherche_prenom"
  end

  def destroy
    @prenom.destroy
    respond_to do |format|
      format.html { redirect_to prenoms_url }
      format.json { head :no_content }
      format.js {render :nothing => true}
    end
  end

  # GET /prenoms
  # GET /prenoms.json
  def index
    @prenoms = Prenom.all
    @prenom = Prenom.new
  end

  # GET /prenoms/1
  # GET /prenoms/1.json
  def show
  end

  # GET /prenoms/new
  def new
    @prenom = Prenom.new
  end

  # GET /prenoms/1/edit
  def edit
  end

  # POST /prenoms
  # POST /prenoms.json
  def create
    @prenom = Prenom.new(prenom_params)

    respond_to do |format|
      if @prenom.save
        format.html { redirect_to @prenom, notice: 'Prenom was successfully created.' }
        format.json { render :show, status: :created, location: @prenom }
        format.js { render 'create' }
      else
        format.html { render :new }
        format.json { render json: @prenom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prenoms/1
  # PATCH/PUT /prenoms/1.json
  def update
    respond_to do |format|
      if @prenom.update(prenom_params)
        format.html { redirect_to @prenom, notice: 'Prenom was successfully updated.' }
        format.json { render :show, status: :ok, location: @prenom }
      else
        format.html { render :edit }
        format.json { render json: @prenom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prenoms/1
  # DELETE /prenoms/1.json
  def destroy
    @prenom.destroy
    respond_to do |format|
      format.html { redirect_to prenoms_url, notice: 'Prenom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prenom
      @prenom = Prenom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prenom_params
      params.require(:prenom).permit(:texte)
    end
end
