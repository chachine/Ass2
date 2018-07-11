require 'ocr_space'

class ScanAttStocksController < ApplicationController
  before_action :set_scan_att_stock, only: [:show, :edit, :update, :destroy]
  # GET /scan_att_stocks
  # GET /scan_att_stocks.json
  def index
    @scan_att_stocks = ScanAttStock.all
  end

  # GET /scan_att_stocks/1
  # GET /scan_att_stocks/1.json
  def show
     @new_stock = AttStock.where("scan_att_stock_id = #{params[:id]} ").to_a

      # resource = OcrSpace::Resource.new(apikey: 'bdf97078bf88957')
      # image_url = Cloudinary::Utils.cloudinary_url(@scan_att_stock.filepath)
      # @ocr = resource.clean_convert url: "#{image_url}"
  end

  # GET /scan_att_stocks/new
  def new
    @scan_att_stock = ScanAttStock.new
  end

  # GET /scan_att_stocks/1/edit
  # def edit
  # end

  # POST /scan_att_stocks
  # POST /scan_att_stocks.json
  def create
    @scan_att_stock = ScanAttStock.new(scan_att_stock_params)

    respond_to do |format|
      # if @scan_att_stock.save

      #   count = 0
      #   (@scan_att_stock.du..@scan_att_stock.au).each do |n|
      #     @new_att = AttStock.new(:numero => n, :scan_att_stock_id => @scan_att_stock.id , :typeV => @scan_att_stock.typeV)
      #    @new_att.save
      #    count+=1
      #   end
      # end

      if @scan_att_stock.save
        @scan_att_stock.create_stock

          format.html { redirect_to @scan_att_stock, notice: 'Scan att stock was successfully created.' }
          format.json { render :show, status: :created, location: @scan_att_stock }

      else
        format.html { render :new ,notice: ''}
        format.json { render json: @scan_att_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scan_att_stocks/1
  # PATCH/PUT /scan_att_stocks/1.json
  def update
    respond_to do |format|
      if @scan_att_stock.update(scan_att_stock_params)
        format.html { redirect_to @scan_att_stock, notice: 'Scan att stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @scan_att_stock }
      else
        format.html { render :edit }
        format.json { render json: @scan_att_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scan_att_stocks/1
  # DELETE /scan_att_stocks/1.json
  def destroy
    @scan_att_stock.destroy
    respond_to do |format|
      format.html { redirect_to scan_att_stocks_url, notice: 'Scan att stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scan_att_stock
      @scan_att_stock = ScanAttStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scan_att_stock_params
      params.require(:scan_att_stock).permit(:filepath, :typeV, :qty, :du, :au, :le)
    end
end
