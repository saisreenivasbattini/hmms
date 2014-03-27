class MmRangesController < ApplicationController
  before_action :set_mm_range, only: [:show, :edit, :update, :destroy]

  layout 'admin'
  # GET /mm_ranges
  # GET /mm_ranges.json
  def index
    @mm_ranges = MmRange.all
  end

  # GET /mm_ranges/1
  # GET /mm_ranges/1.json
  def show
  end

  # GET /mm_ranges/new
  def new
    @mm_range = MmRange.new
  end

  # GET /mm_ranges/1/edit
  def edit
  end

  # POST /mm_ranges
  # POST /mm_ranges.json
  def create
    @mm_range = MmRange.new(mm_range_params)

    respond_to do |format|
      if @mm_range.save
        format.html { redirect_to @mm_range, notice: 'Mm range was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mm_range }
      else
        format.html { render action: 'new' }
        format.json { render json: @mm_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mm_ranges/1
  # PATCH/PUT /mm_ranges/1.json
  def update
    respond_to do |format|
      if @mm_range.update(mm_range_params)
        format.html { redirect_to @mm_range, notice: 'Mm range was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mm_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mm_ranges/1
  # DELETE /mm_ranges/1.json
  def destroy
    @mm_range.destroy
    respond_to do |format|
      format.html { redirect_to mm_ranges_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mm_range
      @mm_range = MmRange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mm_range_params
      params.require(:mm_range).permit(:low, :high, :state_id, :region_id)
    end
end
