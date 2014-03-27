class PublicInfosController < ApplicationController
  before_action :set_public_info, only: [:show, :edit, :update, :destroy]

  layout 'admin'
  # GET /public_infos
  # GET /public_infos.json
  def index
    @public_infos = PublicInfo.all
  end

  # GET /public_infos/1
  # GET /public_infos/1.json
  def show
  end

  # GET /public_infos/new
  def new
    @public_info = PublicInfo.new
  end

  # GET /public_infos/1/edit
  def edit
  end

  # POST /public_infos
  # POST /public_infos.json
  def create
    @public_info = PublicInfo.new(public_info_params)

    respond_to do |format|
      if @public_info.save
        format.html { redirect_to @public_info, notice: 'Public info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @public_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @public_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_infos/1
  # PATCH/PUT /public_infos/1.json
  def update
    respond_to do |format|
      if @public_info.update(public_info_params)
        format.html { redirect_to @public_info, notice: 'Public info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @public_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_infos/1
  # DELETE /public_infos/1.json
  def destroy
    @public_info.destroy
    respond_to do |format|
      format.html { redirect_to public_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_info
      @public_info = PublicInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_info_params
      params.require(:public_info).permit(:practice_name, :avg_annual_collection, :avg_annual_visits)
    end
end
