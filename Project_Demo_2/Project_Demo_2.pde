PImage tent;
PImage wheel;
PImage prize;
PImage person;
PImage hammer;
PImage hammer1;
PImage bell;
String state = "pregame";
int moveTent = 100;
int moveTent1 = -300;
int moveWheel = 500;
int movePrize = 900;
int start = 450;
int tickets = 0;

String object = "";

void setup(){
  size(1200, 700);
  tent = loadImage("tent.png");
  wheel = loadImage("wheel.png");
  prize = loadImage("prize.png");
  person = loadImage("person.png");
  hammer = loadImage("hammer.png");
  hammer1 = loadImage("hammer copy.png");
  bell = loadImage("bell.png");
}

void draw(){
  if (state=="pregame"){
    background(#E0F3FF);
    textAlign(CENTER);
    textSize(50);
    text("Type in your name", width/2, 100);
    fill(0);
    text(object, width/2, 300);    
    text("Submit", 450, 500);
    rect(450, 500, 300, 100);
  }
  if (state == "welcome"){
    background(#E0F3FF);
    image(person, 900, 250, 250, 400);
    text("Welcome", width/2, 100);
    text(object, width/2, 200);
    rect(450, 500, 300, 100);
  }
  if (state == "instructions"){
    background(#E0F3FF);
    text("Instructions", width/2, 100);
    rect(450, 500, 300, 100);
  }
  if (state == "setting"){
    background(#E0F3FF);
    fill(0);
    textSize(40);
    text("Tickets: " + tickets, 150, 50);
    image(tent, moveTent, 200, 400, 500);
    image(tent, moveTent1, 200, 400, 500);
    image(wheel, moveWheel, 190, 400, 500);
    image(prize, movePrize, 300, 250, 500);
    fill(255);
    triangle(50, 500, 100, 450, 100, 550);
    triangle(1150, 500, 1100, 450, 1100, 550);
    
    if (movePrize <= 100){
      moveTent -=0;
      moveTent1 -=0;
      moveWheel -=0;
      movePrize -=0;
  }
    else if(mouseX >= 1000){
      moveTent -=7;
      moveTent1 -=7;
      moveWheel -=7;
      movePrize -=7;
    }
    if (moveTent1 >=700){
      moveTent -=0;
      moveTent1 -=0;
      moveWheel -=0;
      movePrize -=0;
    }
    else if (mouseX <=200){
      moveTent +=7;
      moveTent1+=7;
      moveWheel +=7;
      movePrize +=7;
    }
  
  }
  if (state == "highstriker"){
    striker();
    image(hammer,400, mouseY-100, 200, 200);
  }
  if (state == "hit"){
    background(255);
    striker();
    image(hammer1, 450, 350, 300, 300);
    
    if(start <=100){
      fill(random(0,255), random(0,255), random(0,255));
      textSize(60);
      text("WINNER", width/2, height/2);
    }
    if(start >100 && start<=200){
      fill(random(0,255), 0, 0);
      textSize(50);
      text("Somewhat Strong", width/2, height/2);
    }
    if(start >200 && start<=300){
      fill(0, random(0,255), 0);
      textSize(50);
      text("Mediocre", width/2, height/2);
    }
    if(start >300 && start<=400){
      fill(0,0,random(0,255));
      textSize(50);
      text("Okay", width/2, height/2);
    }
    if(start >400){
      fill(random(0,255));
      textSize(50);
      text("Weak", width/2, height/2);
    }
  }
}
void striker(){
  background(255);
  fill(244, 238, 66);
  rect(500, 50, 100, 450);
  fill(255, 0, 0);
  rect(500, 450, 100, 130);
  fill(0);
  ellipse(550, 530, 100, 50);
  rect(500, 500, 100, 30);
  fill(173, 171, 171);
  ellipse(550, 500, 100, 50);
  fill(0);
  ellipse(553, start, 20, 20);
  textSize(20);
  text("400", 450, 110);
  text("300", 450, 210);
  text("200", 450, 310);
  text("100", 450, 410);
  image(bell, 423, -70, 250, 250);
  rect(100, 100, 100, 100);
}

void keyPressed(){
  if (state =="pregame"){
    object += key;
  }
}

void mousePressed(){
  if (state == "pregame" && mouseX>=450 && mouseX<=450+300 && mouseY>=500 && mouseY<=500+100){
    state = "welcome";
  }
  else if (state == "welcome" && mouseX>=450 && mouseX<=450+300 && mouseY>=500 && mouseY<=500+100){
    state = "instructions";
  }
  else if (state == "instructions" && mouseX>=450 && mouseX<=450+300 && mouseY>=500 && mouseY<=500+100){
    state = "setting";
  }
  else if (state == "setting" && mouseX >=moveTent && mouseX<=moveTent+400 && mouseY >=200 && mouseY<=200+500){
    state = "highstriker";
  }
  else if (state == "highstriker"){
    state = "hit";
    if (mouseY<=100){
      start = mouseY;
      tickets+=40;
    }
    else if(mouseY>100 && mouseY<=200){
      start = mouseY;
      tickets+=30;
    }
    else if (mouseY>200 && mouseY<=300){
      start = mouseY;
      tickets+=20;
    }
    else{
      start = mouseY;
      tickets+=10;
    }
  }
  else if (state == "highstriker" || state == "hit" & mouseX >=100 && mouseX<=100+100 && mouseY >=100 && mouseY<=100+100){
    state = "setting";  
  }
}

//void mouseMoved(){
//  if (state == "setting" && mouseX>=moveTent && mouseX<= moveTent){
//    image(tent, moveTent, 200, 400, 500);
//  }
//}