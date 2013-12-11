name = "Jeff"

###
var square = function (x) {
  return x * x;
}

alert(square(5))
###

# square = (x) -> x * x

# alert square 5

role = (name) ->
  if name == "Erik"
    "Instructor"
  else
    "Student"

role "Erik"


role = (name) -> if name == "Erik" then "Instructor" else "Student"


