
//variables are declared with var and without specificed data type
//setting up variables for background color with initial values
var r= 255;
var g= 100;
var b= 99.8;
var message = "hello"; //note that String is still declared simply with var

function setup() {
  createCanvas(500, 500);
}

function draw() {
  background(r, g, b);
  //drawing lots of lines with a for loop
textSize(44);
textAlign(CENTER);
  for(var i=0; i<width; i+=10){ //initialize for loop with var and no data type
    line(mouseX, i, i, mouseY);
  }
  ellipse(mouseX, mouseY, 50, 50);
  text(message, width/2, height/2);
}

function mousePressed(){
  r = random(255);
  g = random(255);
  b = random(255);
  console.log("mouse is pressed"); // for printing to console
}