var img = document.getElementById("catwalk");
var start = document.getElementById("start");
var faster = document.getElementById("faster");
var slower = document.getElementById("slower");
var stop = document.getElementById("stop");
img.style.left = "0px";
max = document.width-img.width;
var targetId;

function moveCat(){
 if (parseInt(img.style.left,10) <= max) {
    var left = parseInt(img.style.left, 10);
    left += 20;

    img.style.left = String(left)+"px";
  }
};

start.onclick = function() {
  targetId = setInterval(moveCat, 60);
};

stop.onclick = function() {
  clearInterval(targetId);
};

// faster.onclick = function fastCat(){
//   max = document.width-img.width;
//   while (img.style.left < max) {
//   var left = parseInt(img.style.left, 10);
//   left += 50;
//   img.style.left = String(left)+"px";
//   setInterval(fastCat, 500);
//   };
// };

// slower.onclick = function slowCat(){
//     var left = parseInt(img.style.left, 10);
//     left += 5;
//     img.style.left = String(left)+"px";
//     setInterval(slowCat, 500);
// };

// stop.onclick = function stopCat(){
//     var left = parseInt(img.style.left, 10);
//     img.style.left = String(left)+"px";
//     setInterval(stopCat, 500);
// };



