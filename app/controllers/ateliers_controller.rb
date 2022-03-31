class AteliersController < ApplicationController
  before_action :set_atelier, only: %i[ show edit update destroy ]

  # GET /ateliers or /ateliers.json
  def index
    @ateliers = Atelier.all
  end

  # GET /ateliers/1 or /ateliers/1.json
  def show
  end

  # GET /ateliers/new
  def new
    @atelier = Atelier.new
  end

  # GET /ateliers/1/edit
  def edit
  end

  # POST /ateliers or /ateliers.json
  def create
    @atelier = Atelier.new(atelier_params)

    respond_to do |format|
      if @atelier.save
        format.html { redirect_to atelier_url(@atelier), notice: "Atelier was successfully created." }
        format.json { render :show, status: :created, location: @atelier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atelier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ateliers/1 or /ateliers/1.json
  def update
    respond_to do |format|
      if @atelier.update(atelier_params)
        format.html { redirect_to atelier_url(@atelier), notice: "Atelier was successfully updated." }
        format.json { render :show, status: :ok, location: @atelier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atelier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ateliers/1 or /ateliers/1.json
  def destroy
    @atelier.destroy

    respond_to do |format|
      format.html { redirect_to ateliers_url, notice: "Atelier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atelier
      @atelier = Atelier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atelier_params
      params.require(:atelier).permit(:name, :description, :domains, :started_at, :ended_at, :image, :credits, :tools)
    end
end
