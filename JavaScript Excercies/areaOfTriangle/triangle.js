var triangle = {
  sideA: 30,
  sideB: 30,
  sideC: 30
};

//p is half the perimeter
function areaOfTriangle(triangle) {
  var p = (triangle["sideA"] + triangle["sideB"] + triangle["sideC"])/2;
  area = Math.sqrt (p*(p-triangle["sideA"])*(p-triangle["sideB"])*(p-triangle["sideC"]));
  return area; 
};

console.log(areaOfTriangle(triangle));

console.log("Complete");