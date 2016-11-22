PImage tent;
PImage wheel;
PImage prize;

void setup(){
  size(1200, 700);
  tent = loadImage("tent.png");
  wheel = loadImage("wheel.png");
  prize = loadImage("prize.jpg");

}

void draw(){
  background(#E0F3FF);
  image(tent, 100, 200, 400, 500);
  image(wheel, 500, 200, 400, 500);
  image(prize, 900, 300, 200, 500);
  triangle(50, 500, 100, 450, 100, 550);
  triangle(1150, 500, 1100, 450, 1100, 550);
}