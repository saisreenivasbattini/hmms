class PublicInformationsController < ApplicationController
  before_action :set_public_information, only: [:show, :edit, :update, :destroy]

  layout 'admin'
  # GET /public_informations
  # GET /public_informations.json
  def index
    @public_informations = PublicInformation.all
  end

  # GET /public_informations/1
  # GET /public_informations/1.json
  def show
  end

  # GET /public_informations/new
  def new
    @public_information = PublicInformation.new
  end

  # GET /public_informations/1/edit
  def edit
  end

  # POST /public_informations
  # POST /public_informations.json
  def create
    @public_information = PublicInformation.new(public_information_params)

    respond_to do |format|
      if @public_information.save
        format.html { redirect_to @public_information, notice: 'Public information was successfully created.' }
        format.json { render action: 'show', status: :created, location: @public_information }
      else
        format.html { render action: 'new' }
        format.json { render json: @public_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_informations/1
  # PATCH/PUT /public_informations/1.json
  def update
    respond_to do |format|
      if @public_information.update(public_information_params)
        format.html { redirect_to @public_information, notice: 'Public information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @public_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_informations/1
  # DELETE /public_informations/1.json
  def destroy
    @public_information.destroy
    respond_to do |format|
      format.html { redirect_to public_informations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_information
      @public_information = PublicInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_information_params
      params.require(:public_information).permit(:practice_name, :avg_annual_collection, :avg_annual_visits, :state_id, :region_id)
    end
end
