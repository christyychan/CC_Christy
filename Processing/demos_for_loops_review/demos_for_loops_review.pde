void setup(){
  size(500, 500);
  background(255);
}

void draw(){
  for (int i = width; i >= 0; i-=50){
    rectMode(CENTER);
    rect(width/2, width/2, i, i);
  }
}