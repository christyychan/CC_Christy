var stats;
var date = [];
var high = [];
var low = [];
var sunny;
var cloudy;


function preload(){
  stats = loadTable("weather.csv");
  sunny = loadImage("sunny.png");
  cloudy = loadImage("cloudy.png")
}

function setup() {
  createCanvas(610, 500);
  for (var i = 0; i < stats.getColumnCount(); i++){
    //row, col
    date[i] = (stats.get(i, 0));
    high[i] = float(stats.get(i, 1));
    low[i] = float(stats.get(i, 2));
  }
  console.log(date);

}

function draw() {
  background(143, 215,242);
  counter = 0
  for (var k = 100; k<=600; k+=200){
    stroke(1);
    textSize(20);
    textAlign(CENTER);
    text(date[counter],k,100);
    text("High: " + high[counter], k, 400);
    text("Low: " + low[counter], k, 450)
    counter+=1;
    line(k+110, 0, k+110, 600)
    if (high[counter] == 61){
      var move = 10;
      for (var pic = 0; pic<high[counter]/11; pic++){
        image(sunny, move, 200, 50, 50);
        move+=30;
      }
      var move2 = 410
      for (var pic = 0; pic<high[counter]/11; pic++){
        image(sunny, move2, 200, 50, 50);
        move2+=30;
      }
    
    }
    if (high[counter] == 50){
      var another = 220;
      for (var pic1 = 0; pic1<high[counter]/11; pic1++){
        image(cloudy, another, 200, 50, 50);
        another+=30;
      } 
     }
}}