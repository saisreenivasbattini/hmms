class ProviderController < ApplicationController
  def index
  	 @profile = Profile.new
  	 logger.info "#{session[:message]}"
  	 flash[:notice] = session[:message]
  end

  def login
    if request.post?
       session[:profile] = nil
       if profile = Profile.where({email: params[:email], password: params[:password]}).first
          
          session[:profile] = profile.email
          session[:notice] = 'Please complete profile.'
          redirect_to '/provider_profile', notice: 'Please complete profile.'
        else 
          render action: 'login', notice: 'Login failed.'      
        end
      end
  end

  def search
  end

  def success
  	@message = session[:success_message]
  	session[:success_message] = nil
  end

  def profile
    @profile = Profile.where({email: session[:profile]}).first
  end

  def logout
    session[:profile] = nil
    reset_session
    redirect_to root_path
  end


end
