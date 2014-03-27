class ConfidentialInfosController < ApplicationController
  before_action :set_confidential_info, only: [:show, :edit, :update, :destroy]

  layout 'admin'
  # GET /confidential_infos
  # GET /confidential_infos.json
  def index
    @confidential_infos = ConfidentialInfo.all
  end

  # GET /confidential_infos/1
  # GET /confidential_infos/1.json
  def show
  end

  # GET /confidential_infos/new
  def new
    @confidential_info = ConfidentialInfo.new
  end

  # GET /confidential_infos/1/edit
  def edit
  end

  # POST /confidential_infos
  # POST /confidential_infos.json
  def create
    @confidential_info = ConfidentialInfo.new(confidential_info_params)

    respond_to do |format|
      if @confidential_info.save
        format.html { redirect_to @confidential_info, notice: 'Confidential info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @confidential_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @confidential_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confidential_infos/1
  # PATCH/PUT /confidential_infos/1.json
  def update
    respond_to do |format|
      if @confidential_info.update(confidential_info_params)
        format.html { redirect_to @confidential_info, notice: 'Confidential info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @confidential_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confidential_infos/1
  # DELETE /confidential_infos/1.json
  def destroy
    @confidential_info.destroy
    respond_to do |format|
      format.html { redirect_to confidential_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confidential_info
      @confidential_info = ConfidentialInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def confidential_info_params
      params.require(:confidential_info).permit(:practice_name, :address1, :address2, :city, :state, :phone, :email, :qualified_info_id)
    end
end
