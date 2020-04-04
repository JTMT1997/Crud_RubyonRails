class PosisisController < ApplicationController
  before_action :set_posisi, only: [:show, :edit, :update, :destroy]

  # GET /posisis
  # GET /posisis.json
  def index
    @posisis = Posisi.all
  end

  # GET /posisis/1
  # GET /posisis/1.json
  def show
  end

  # GET /posisis/new
  def new
    @posisi = Posisi.new
  end

  # GET /posisis/1/edit
  def edit
  end

  # POST /posisis
  # POST /posisis.json
  def create
    @posisi = Posisi.new(posisi_params)

    respond_to do |format|
      if @posisi.save
        format.html { redirect_to @posisi, notice: 'Posisi was successfully created.' }
        format.json { render :show, status: :created, location: @posisi }
      else
        format.html { render :new }
        format.json { render json: @posisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posisis/1
  # PATCH/PUT /posisis/1.json
  def update
    respond_to do |format|
      if @posisi.update(posisi_params)
        format.html { redirect_to @posisi, notice: 'Posisi was successfully updated.' }
        format.json { render :show, status: :ok, location: @posisi }
      else
        format.html { render :edit }
        format.json { render json: @posisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posisis/1
  # DELETE /posisis/1.json
  def destroy
    @posisi.destroy
    respond_to do |format|
      format.html { redirect_to posisis_url, notice: 'Posisi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posisi
      @posisi = Posisi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def posisi_params
      params.require(:posisi).permit(:posisi)
    end
end
