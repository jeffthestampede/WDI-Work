class TwitterController < ApplicationController.rb

  def tweet
    client = Twitter::Client.new(
        :oauth_token => session[:twitter_token]
        :oauth_token_secret => sesspm[:twitter_secret]
      )

    client.update(params[:text])
  end

end