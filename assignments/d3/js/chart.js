var button = document.getElementbyId('button');
var container = document.getElementbyId('container');


button.onclick = function () {
  var svg = d3.select('div#container svg');
  var data = [100, 75, 150];
  svg.append('rect');
  svg.append('rect');
  svg.append('rect');

  svg.append('rect')
    .attr({
      "x": xOffset,
      "width": 100,
      "height": 100
    })
    .transition().duration(2000)
    .style("fill", "green");

};