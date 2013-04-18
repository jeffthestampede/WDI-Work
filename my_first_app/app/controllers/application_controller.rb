class ApplicationController < ActionController::Base
  protect_from_forgery
  def home
    #render :home (done automatically because of rails)
    @name = "Jeff"
  end

  def welcome
    m = Movie.new
    @title = m.title
    @name = params[:name]
  end

end
