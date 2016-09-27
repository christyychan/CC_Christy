//Old TV by Christy Chan
//Power TV by clicking on button
//Change channel using 1, 2, 3 on keyboard
//On Channel 3, move mouse to change background


boolean button = false;
boolean one = false;
float moveCircle = 400;
float moveLeft1 = 490;
float moveWings = 400;
float moveEyes = 505;
float moveLine = 420;
float moveLinee = 390;
float moveLine1 = 390;
float moveLine11 = 360;
float moveSun = 60;
float moveGrass = 650;
int value = 0;
int value1 = 0;
int value2 = 0;


void setup(){
  size(1000, 750);
}

void draw(){
  //switch
  if (button){
    // grid 
    for (int x = 0; x <780; x+=10){
      for(int y = 0; y < 750; y+=10){
        fill(random(0,255));
        rect(x, y, 10, 10);
      } }
    fill(75, 50, 12);
    rect(0, 0, 50, 750);
    rect(0, 0, 900, 50);
    rect(0, 700, 1000, 60);
    rect(730, 0, 270, 750); 

  } else {
    background (0);
    fill(75, 50, 12);
    rect(0, 0, 50, 750);
    rect(0, 0, 900, 50);
    rect(0, 700, 1000, 60);
    rect(730, 0, 270, 750);
  }
  
  // or clicked on 1 in box
    if ((key == '1')) {
      //frame
      fill(75, 50, 12);
      rect(0, 0, 50, 750);
      rect(0, 0, 900, 50);
      rect(0, 700, 1000, 60);
      rect(730, 0, 270, 750);
      fill(51, 75, 98);
      ellipse(600, 200, 50, 50);
      
      fill(131, 27, 102);
      rect(50, 50, 680, 650);
      
      //abc
      fill(0);
      ellipse(110, 640, 100, 100);
      fill(255);
      textSize(50);
      text("abc", 67, 655);
      
      //bee
      fill(0);
      ellipse(moveWings, 280, 60, 100);
      ellipse(moveEyes, 300, 10, 10);
      fill(254, 255, 28);
      ellipse(moveCircle, 325, 150, 80);
      ellipse(moveLeft1, 310, 60, 60);
      fill(0);
      ellipse(moveEyes, 300, 10, 10);
      strokeWeight(10);
      line(moveLine, 280, moveLinee, 360);
      line(moveLine1, 280, moveLine11, 358);

      if(moveCircle >= 400 && moveCircle < 600){
        moveCircle = moveCircle + 1;
        moveLeft1 = moveLeft1 + 1;
        moveWings = moveWings +1;
        moveEyes = moveEyes + 1;
        moveLine = moveLine + 1;
        moveLinee = moveLinee + 1;
        moveLine1 = moveLine1 + 1;
        moveLine11 = moveLine11 + 1;
      } else {
        moveCircle = 400;
        moveLeft1 = 490;
        moveWings = 400;
        moveEyes = 505;
        moveLine= 420;
        moveLinee = 390;
        moveLine1 = 390;
        moveLine11 = 360;
      }
    }
    if ((key == '2')) {
      //background
      fill(234, 250, 255);
      rect(50, 50, 680, 650);
      noStroke();
      //sun
      fill(250, 255, 8);
      ellipse(moveSun,moveSun,100,100);
      //grass
      fill(102, 209, 86);
      rect(50, moveGrass, 680, 50);
      //flowers
        //stem
      fill(116, 93, 9);
      rect(392, 550, 15, 100);
        //petals
      fill(145, 16, 193);
      ellipse(400, 510, 50, 80); //top
      ellipse(370, 530, 80, 50); //left
      ellipse(430, 530, 80, 50); //right
      ellipse(400, 550, 50, 80); //bottom
        //bulb
      fill(252, 252, 64);
      ellipse(400, 530, 40, 40);
      //frame
      fill(75, 50, 12);
      rect(0, 0, 50, 750);
      rect(0, 0, 900, 50);
      if (moveSun >= 60 && moveSun <= 100){
      moveSun = moveSun + 1;
      } else {
        moveSun = 60;
      }
      if (moveGrass >= 720){
        moveGrass = moveGrass + -1;
      } else {
        moveGrass = 650;
      }
    }
    
    if ((key == '3')) {
    background(value, value1, value2);
    fill(0);
    textSize(32);
    text("Move mouse to change background", 100, 100);
    fill(12, 100, 124);
    ellipse(400, 300, 100, 50);
    triangle(350, 300, 310, 280, 310, 320);
    fill(75, 50, 12);
    rect(0, 0, 50, 750);
    rect(0, 0, 900, 50);
    rect(0, 700, 1000, 60);
    rect(730, 0, 270, 750);
    }
 
  //button
  fill(175);
  stroke(10);
  strokeWeight(0);
  ellipse(860, 580, 100, 100);
  rect(780, 100, 50, 50);
  rect(840, 100, 50, 50);
  rect(900, 100, 50, 50);
  fill(0);
  textSize(32);
  text("power", 811, 590);
  text("1", 794, 140);
  text("2", 854, 140);
  text("3", 914, 140);

}

void mousePressed(){
  if (mouseX > 760 && mouseX < 760 + 200 && mouseY > 500 && mouseY < 500+200){
    button = !button;
  }
}
void mouseMoved() {
  value = value + 5;
  value1 = value1 + 3;
  value2 = value2 + 9;
  if (value > 255 && value1 > 255 && value2 > 255) {
    value = 0;
    value1 = 0;
    value2 = 0;
  }
}