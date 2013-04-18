require 'open-uri'

class MovieController < ApplicationController
  
  def home
  end 

  def results
    @query = params[:q]
    s = MovieSearch.new
    @results = s.search(@query) || [] 
  end

  def detail
    @id = params[:id]
    @query = params[:q]
    n= Movie.new
    @detail = n.moviedetails(@id)
  end

end
