class Movie

  def moviedetails(id)
    file = open("http://www.omdbapi.com/?i=#{URI.escape(id)}")
    JSON.load(file.read)
  end
  
end
