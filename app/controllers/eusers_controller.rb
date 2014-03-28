class EusersController < ApplicationController
  before_action :set_euser, only: [:show, :edit, :update, :destroy]

  layout 'admin'
  # GET /eusers
  # GET /eusers.json
  def index
    @eusers = Euser.all
  end

  # GET /eusers/1
  # GET /eusers/1.json
  def show
  end

  # GET /eusers/new
  def new
    @euser = Euser.new
  end

  # GET /eusers/1/edit
  def edit
  end

  # POST /eusers
  # POST /eusers.json
  def create
    @euser = Euser.new(euser_params)

    respond_to do |format|
      if @euser.save
        UserMailer.welcome_email(@euser).deliver
        format.html { redirect_to @euser, notice: 'Euser was successfully created.' }
        format.json { render action: 'show', status: :created, location: @euser }
      else
        format.html { render action: 'new' }
        format.json { render json: @euser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eusers/1
  # PATCH/PUT /eusers/1.json
  def update
    respond_to do |format|
      if @euser.update(euser_params)
        format.html { redirect_to @euser, notice: 'Euser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @euser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eusers/1
  # DELETE /eusers/1.json
  def destroy
    @euser.destroy
    respond_to do |format|
      format.html { redirect_to eusers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_euser
      @euser = Euser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def euser_params
      params[:euser][:password]= Digest::SHA1.hexdigest(Time.now.to_s)
      params.require(:euser).permit(:name, :email, :login,:password)
    end
end
