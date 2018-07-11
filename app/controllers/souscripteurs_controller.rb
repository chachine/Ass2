class SouscripteursController < ApplicationController
  before_action :set_souscripteur, only: [:show, :edit, :update, :destroy]

  # GET /souscripteurs
  # GET /souscripteurs.json
  def index
    @souscripteurs = Souscripteur.all
  end

  # GET /souscripteurs/1
  # GET /souscripteurs/1.json
  def show
  end

  # GET /souscripteurs/new
  def new
    @souscripteur = Souscripteur.new
  end

  # GET /souscripteurs/1/edit
  def edit
  end

  # POST /souscripteurs
  # POST /souscripteurs.json
  def create
    @souscripteur = Souscripteur.new(souscripteur_params)

    respond_to do |format|
      if @souscripteur.save
        format.html { redirect_to @souscripteur, notice: 'Souscripteur was successfully created.' }
        format.json { render :show, status: :created, location: @souscripteur }
      else
        format.html { render :new }
        format.json { render json: @souscripteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /souscripteurs/1
  # PATCH/PUT /souscripteurs/1.json
  def update
    respond_to do |format|
      if @souscripteur.update(souscripteur_params)
        format.html { redirect_to @souscripteur, notice: 'Souscripteur was successfully updated.' }
        format.json { render :show, status: :ok, location: @souscripteur }
      else
        format.html { render :edit }
        format.json { render json: @souscripteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /souscripteurs/1
  # DELETE /souscripteurs/1.json
  def destroy
    @souscripteur.destroy
    respond_to do |format|
      format.html { redirect_to souscripteurs_url, notice: 'Souscripteur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_souscripteur
      @souscripteur = Souscripteur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def souscripteur_params
      params.require(:souscripteur).permit(:titre, :nom)
    end
end
