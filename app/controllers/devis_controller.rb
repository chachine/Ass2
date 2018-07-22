class DevisController < ApplicationController
  before_action :set_devi, only: [:show, :edit, :update, :destroy]

  # GET /devis
  # GET /devis.json
  def index
    @devis = Devi.all
  end

  # GET /devis/1
  # GET /devis/1.json
  def show
    @devi = Devi.find(params[:id])
    @client = @devi.client
    @vehicule = @devi.vehicule
  end

  # GET /devis/new
  def new
    @devi = Devi.new
     @devi.build_client
     @devi.vehicule = Vehicule.new
    @devi.build_vehicule
    # @devi.souscripteur = Souscipteur.new
    @devi.build_souscripteur

  end

  # GET /devis/1/edit
  def edit
  end

  # POST /devis
  # POST /devis.json
  def create
    @devi = Devi.new(devi_params)
     #@devi.build_client
    respond_to do |format|
      if @devi.save
        format.html { redirect_to @devi, notice: 'Devi was successfully created.' }
        format.json { render :show, status: :created, location: @devi }
      else
        format.html { render :new }
        format.json { render json: @devi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devis/1
  # PATCH/PUT /devis/1.json
  def update
    respond_to do |format|
      if @devi.update(devi_params)
        format.html { redirect_to @devi, notice: 'Devi was successfully updated.' }
        format.json { render :show, status: :ok, location: @devi }
      else
        format.html { render :edit }
        format.json { render json: @devi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devis/1
  # DELETE /devis/1.json
  def destroy
    @devi.destroy
    respond_to do |format|
      format.html { redirect_to devis_url, notice: 'Devi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devi
      @devi = Devi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devi_params
      # params.fetch(:devi, {})
      params.require(:devi).permit(client_attributes: [:id,:nom, :prenom, :address, :ville, :pays, :date_naissance, :lieu_naissance, :sexe, :cin, :date_val_cin, :num_permis, :cat_permis, :lieu_permis, :date_permis, :date_val_permis, :scan,:tel, :tel_whatsapp],
                                  vehicule_attributes: [:scan_cache, :matricule, :matricule_ant, :date_mc, :date_mc_maroc,
                                        :date_mutation, :usage, :proprietaire,
                                        :address, :date_val_cgrise, :marque,
                                        :type_cgrise, :genre, :modele,
                                        :carburant, :chassis, :cylindre, :cv,
                                        :place, :ptac, :poids, :ptmct, :scan, :scan_cache],
                                        souscripteur_attributes: [:titre, :nom]

                                  )
    end
end
