$(document).ready(function() {
  return $.ajax({
    url: 'http://localhost:1234',
    method: 'get',
    jsonpCallback: 'callback',
    dataType: 'jsonp',
    success: function(data) {
        return Morris.Bar({
        element: 'chart',
        data: data,
        xkey: 'title',
        stacked: false,
        ykeys: ['value'],
        labels: ['Rotten Tomatoes Viewer Rating']
      });
    }
  });
});

// $(document).ready(function () {

//   $.ajax({
//     url: 'http://localhost:1234',
//     method: 'get',
//     dataType: 'json',
//     success: function(data) {
//       return Morris.Bar({
//         element: 'chart',
//         data: data,
//         xkey: 'title',
//         stacked: false,
//         ykeys: ['value'],
//         labels: ['Rotten Tomatoes Viewer Rating']
//       });
//     }
//   });
// });

