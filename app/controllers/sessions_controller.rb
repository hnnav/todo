class SessionsController < ApplicationController
    # This is required because of a quirk the "developer" authentication
  # strategy. We'll remove this when we move to a "real" provider.
  ##skip_before_action :verify_authenticity_token, only: :create

  ##def create
  
    ##pp request.env['omniauth.auth']

    ##session[:name] = request.env['omniauth.auth']['info']['name']
    ##session[:omniauth_data] = request.env['omniauth.auth']

    
    ##redirect_to root_path
  end
end
