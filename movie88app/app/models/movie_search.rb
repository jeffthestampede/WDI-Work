require 'open-uri'

class MovieSearch

  def search(query)
    file = open("http://www.omdbapi.com/?s=#{URI.escape(query)}")
    JSON.load(file.read)["Search"]
  end

  #ALTERNATIVE WITH INITIALIZE
  # def initialize(query)
  #   @query = query
  # end

  # def search
  #   file = open("http://www.omdbapi.com/?s=#{URI.escape(query)}")
  #   JSON.load(file.read)["Search"]
  # end

end

