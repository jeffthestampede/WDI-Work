class SessionsController < ApplicationController

  def create
    @session[:twitter_token] = request.env['omniauth.auth']['credentials']['token']
    @session[:twitter_secret] = request.env['omniauth.auth']['credentials']['secret']
    @name = request.env['omniauth.auth']['info']['name']

  end

   def tweet
    client = Twitter::Client.new(
        :oauth_token => @session[:twitter_token]
        :oauth_token_secret => @session[:twitter_secret]
      )

    client.update(params[:text])
  end

end