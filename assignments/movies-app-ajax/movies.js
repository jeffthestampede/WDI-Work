function movieLi(title, year, id) {
  return $('<li class="result" data-id="' + id + '"><b>' + title + '</b> (<i>' + year + '</i>)</li>');
}

function displayMovie() {
  var imdbID = $(this).attr("data-id");
  var resultsContainer = $('#search-results');
  var movieDetailContainer = $('#movie-detail');
  var timer;

  $.ajax({
    url: "http://www.omdbapi.com/",
    method: "get",
    data: { "i": imdbID },
    dataType: 'jsonp',
    beforeSend: function () {
      resultsContainer.empty();
      movieDetailContainer.empty();
      resultsContainer.addClass("hidden");
    },
    success: function (result) {
      var movieTitle = $('<h2 class="movie-title">' + result.Title + ' (<i>' + result.Year + '</i>)</h2>');
      var poster = $('<img class="poster" src="' + result.Poster + '" alt="Movie poster">');
      var runtime = $('<div class="runtime">' + result.Runtime + '</div>' );
      var plot = $('<div class="plot">' + result.Plot + '</div>' );
      var director = $('<div class="director">' + result.Director + '</div>' );
      var actors = $('<div class="actors">' + result.Actors + '</div>' );
      movieDetailContainer.removeClass("hidden");
      movieDetailContainer.append(poster);
      movieDetailContainer.append(movieTitle);
      movieDetailContainer.append(runtime);
      movieDetailContainer.append(plot);
      movieDetailContainer.append(director);
      movieDetailContainer.append(actors);
    },
    error: function () {
        alert('Failed from timeout');
    }
  });
}

$(document).ready( function () {

  // attach click event via delegate
  $('#search-results').on("click", "li.result", displayMovie);

  $('#search-form').on('submit', function (event) {
    event.preventDefault();
    var resultsContainer = $('#search-results');
    var movieDetailContainer = $('#movie-detail');
    var query = $('#search-query').val();
    var timer;

    $.ajax({
      url: "http://www.omdbapi.com/",
      method: "get",
      data: { "s": query },
      dataType: 'jsonp',
      beforeSend: function () {
        resultsContainer.empty();
        movieDetailContainer.empty();
        movieDetailContainer.addClass("hidden");
      },
      success: function (results){

        /* "results" contains the key "Search" which is an array of movies,
             each of which is the following object:
           Title: "To Wong Foo Thanks for Everything, Julie Newmar"
           Type: "movie"
           Year: "1995"
           imdbID: "tt0114682"

           Unless of course there are no results, which means you get this:
           results: {Response: "False", Error: "Movie not found!"}
        */

        if (!!results.Error && results.Error === "Movie not found!") {
          resultsContainer.removeClass("hidden");
          resultsContainer.append($('<li>Sorry, there are no results.</li>'));
        }
        else if (!!results.Search) {
          resultsContainer.removeClass("hidden");
          var searchResults = results.Search;
          for (var i = 0; i < searchResults.length; i += 1) {
            resultsContainer.append(movieLi(searchResults[i].Title,
                                            searchResults[i].Year,
                                            searchResults[i].imdbID));
          }
        }
        else {
          throw $.ajax.error;
        }
      },
      error: function () {
          alert('Failed from timeout');
      }
    });
  });
});