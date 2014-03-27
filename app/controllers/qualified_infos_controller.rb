class QualifiedInfosController < ApplicationController
  before_action :set_qualified_info, only: [:show, :edit, :update, :destroy]

  layout 'admin'
  # GET /qualified_infos
  # GET /qualified_infos.json
  def index
    @qualified_infos = QualifiedInfo.all
  end

  # GET /qualified_infos/1
  # GET /qualified_infos/1.json
  def show
  end

  # GET /qualified_infos/new
  def new
    @qualified_info = QualifiedInfo.new
  end

  # GET /qualified_infos/1/edit
  def edit
  end

  # POST /qualified_infos
  # POST /qualified_infos.json
  def create
    @qualified_info = QualifiedInfo.new(qualified_info_params)

    respond_to do |format|
      if @qualified_info.save
        format.html { redirect_to @qualified_info, notice: 'Qualified info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @qualified_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @qualified_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualified_infos/1
  # PATCH/PUT /qualified_infos/1.json
  def update
    respond_to do |format|
      if @qualified_info.update(qualified_info_params)
        format.html { redirect_to @qualified_info, notice: 'Qualified info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @qualified_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualified_infos/1
  # DELETE /qualified_infos/1.json
  def destroy
    @qualified_info.destroy
    respond_to do |format|
      format.html { redirect_to qualified_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualified_info
      @qualified_info = QualifiedInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualified_info_params
      params.require(:qualified_info).permit(:asking_price, :physician_net_amount, :public_information_id)
    end
end
