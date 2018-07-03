class AttAtocksController < ApplicationController
  before_action :set_att_atock, only: [:show, :edit, :update, :destroy]

  # GET /att_atocks
  # GET /att_atocks.json
  def index
    @att_atocks = AttAtock.all
  end

  # GET /att_atocks/1
  # GET /att_atocks/1.json
  def show
  end

  # GET /att_atocks/new
  def new
    @att_atock = AttAtock.new
  end

  # GET /att_atocks/1/edit
  def edit
  end

  # POST /att_atocks
  # POST /att_atocks.json
  def create
    @att_atock = AttAtock.new(att_atock_params)

    respond_to do |format|
      if @att_atock.save
        format.html { redirect_to @att_atock, notice: 'Att atock was successfully created.' }
        format.json { render :show, status: :created, location: @att_atock }
      else
        format.html { render :new }
        format.json { render json: @att_atock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /att_atocks/1
  # PATCH/PUT /att_atocks/1.json
  def update
    respond_to do |format|
      if @att_atock.update(att_atock_params)
        format.html { redirect_to @att_atock, notice: 'Att atock was successfully updated.' }
        format.json { render :show, status: :ok, location: @att_atock }
      else
        format.html { render :edit }
        format.json { render json: @att_atock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /att_atocks/1
  # DELETE /att_atocks/1.json
  def destroy
    @att_atock.destroy
    respond_to do |format|
      format.html { redirect_to att_atocks_url, notice: 'Att atock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_att_atock
      @att_atock = AttAtock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def att_atock_params
      params.require(:att_atock).permit(:type, :numero, :used)
    end
end
