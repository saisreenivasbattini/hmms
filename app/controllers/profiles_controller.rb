class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  layout 'admin'
  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        session[:message] = nil
        session[:success_message] = 'Profile was successfully created.'
        UserMailer.welcome_email(@profile,request.env["HTTP_HOST"]).deliver

        format.html { redirect_to '/success', notice: 'Profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profile }
      else
        message = ''

        @profile.errors.full_messages.each do |msg|
            message << msg + '</br>'
        end 
        session[:message] = message.html_safe
        logger.info "#{session[:message]}"
        format.html { redirect_to "/register", layout: 'application', notice: 'Invalid email or already registered.'}
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to root_url, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      # params[:profile][:password]= Digest::SHA1.hexdigest(Time.now.to_s)
      params.require(:profile).permit(:email, :first_name, :last_name, :type_of_doctor, :licence_no, :password)
    end
end
