//Channel Surfing by Christy Chan
//All rights to all materials remain courtesy to their respective owners.

PImage chiller;
PImage car;
PImage carscene;
PImage historylogo;
PImage mtv;
PImage nbc;
PImage syfy;
PImage hallmark;
PImage ae;
PImage nature;
PImage girlhair;
PImage guyhair;
PImage heart;
PImage night;
PImage magnifying;
PImage detective;
PImage sherlock;
PImage room;
PImage guitar;
PImage star;
PImage couch;
PImage hair;
PImage sleep;
PImage madmom;
PImage eagle;
PImage crack;
PImage censor;
PImage uparrow;
PImage downarrow;

int numFrames = 17;
int numFramesComedy = 12;
int numFramesSciFi = 4;
int numFramesFlag = 9;
int numFramesHoop = 7;
int frame = 0;
PImage[] blood = new PImage[numFrames];
PImage[] flame = new PImage[numFrames];
PImage[] snl = new PImage[numFramesComedy];
PImage[] spaceship = new PImage[numFramesSciFi];
PImage[] flag = new PImage[numFramesFlag];
PImage[] hoop = new PImage[numFramesHoop];

int counter = 0;
int channels = 0;
float moveDown = 220;
float xmove = 200;
float ymove = 200; 
String state = "pregame";
int hit = 0;

void setup(){
  size(1000, 750);
  frameRate(30);
  
  //scary
  blood[0]  = loadImage("data/blood.gif");
  blood[1]  = loadImage("data/blood1.gif"); 
  blood[2]  = loadImage("data/blood2.gif");
  blood[3]  = loadImage("data/blood3.gif"); 
  blood[4]  = loadImage("data/blood4.gif");
  blood[5]  = loadImage("data/blood5.gif"); 
  blood[6]  = loadImage("data/blood6.gif");
  blood[7]  = loadImage("data/blood7.gif"); 
  blood[8]  = loadImage("data/blood8.gif");
  blood[9]  = loadImage("data/blood9.gif"); 
  blood[10] = loadImage("data/blood10.gif");
  blood[11] = loadImage("data/blood11.gif");
  blood[12] = loadImage("data/blood12.gif");
  blood[13] = loadImage("data/blood13.gif");
  blood[14] = loadImage("data/blood14.gif");
  blood[15] = loadImage("data/blood15.gif");
  blood[16] = loadImage("data/blood16.gif");
  chiller = loadImage("chiller.png");
  
  //action
  flame[0] = loadImage("data/flame0.gif");
  flame[1] = loadImage("data/flame1.gif");
  flame[2] = loadImage("data/flame2.gif");
  flame[3] = loadImage("data/flame3.gif");
  flame[4] = loadImage("data/flame4.gif");
  flame[5] = loadImage("data/flame5.gif");
  flame[6] = loadImage("data/flame6.gif");
  flame[7] = loadImage("data/flame7.gif");
  flame[8] = loadImage("data/flame8.gif");
  flame[9] = loadImage("data/flame9.gif");
  flame[10] = loadImage("data/flame10.gif");
  flame[11] = loadImage("data/flame11.gif");
  flame[12] = loadImage("data/flame12.gif");
  flame[13] = loadImage("data/flame13.gif");
  flame[14] = loadImage("data/flame14.gif");
  flame[15] = loadImage("data/flame15.gif");
  flame[16] = loadImage("data/flame16.gif");
  car = loadImage("car.png");
  carscene = loadImage("carscene.jpg");
  
  //comedy
  snl[0] = loadImage("data/snl.gif");
  snl[1] = loadImage("data/snl1.gif");
  snl[2] = loadImage("data/snl2.gif");
  snl[3] = loadImage("data/snl3.gif");
  snl[4] = loadImage("data/snl4.gif");
  snl[5] = loadImage("data/snl5.gif");
  snl[6] = loadImage("data/snl6.gif");
  snl[7] = loadImage("data/snl7.gif");
  snl[8] = loadImage("data/snl8.gif");
  snl[9] = loadImage("data/snl9.gif");
  snl[10] = loadImage("data/snl10.gif");
  snl[11] = loadImage("data/snl11.gif");
  nbc = loadImage("nbc.png");
  
  //sci-fi
  spaceship[0] = loadImage("data/spaceship.gif");
  spaceship[1] = loadImage("data/spaceship1.gif");
  spaceship[2] = loadImage("data/spaceship2.gif");
  spaceship[3] = loadImage("data/spaceship3.gif");
  star = loadImage("star.png");
  syfy = loadImage("syfy.png");
  night = loadImage("night.jpg");
  
  //romance
  girlhair = loadImage("girlhair.png");
  guyhair = loadImage("guyhair.png");
  heart = loadImage("heart.png");
  hallmark = loadImage("hallmark.png");
  nature = loadImage("nature.jpg");
  
  //mystery
  magnifying = loadImage("magnifying.png");
  detective = loadImage("detective.png");
  ae = loadImage("ae.png");
  sherlock = loadImage("sherlock.jpg");
  
  //history
  flag[0] = loadImage("data/flag.gif");
  flag[1] = loadImage("data/flag1.gif");
  flag[2] = loadImage("data/flag2.gif");
  flag[3] = loadImage("data/flag3.gif");
  flag[4] = loadImage("data/flag4.gif");
  flag[5] = loadImage("data/flag5.gif");
  flag[6] = loadImage("data/flag6.gif");
  flag[7] = loadImage("data/flag7.gif");
  flag[8] = loadImage("data/flag8.gif");
  historylogo = loadImage("historylogo.png");
  eagle = loadImage("eagle.png");
  
  //music
  guitar = loadImage("guitar.png");
  mtv = loadImage("mtv.png");
  room = loadImage("room.jpg");
  
  //sports
  hoop[0] = loadImage("data/hoop.gif");
  hoop[1] = loadImage("data/hoop1.gif");
  hoop[2] = loadImage("data/hoop2.gif");
  hoop[3] = loadImage("data/hoop3.gif");
  hoop[4] = loadImage("data/hoop4.gif");
  hoop[5] = loadImage("data/hoop5.gif");
  hoop[6] = loadImage("data/hoop6.gif");
  
  //everything
  couch = loadImage("couch.png");
  hair = loadImage("hair.png");
  sleep = loadImage("sleep.png");
  madmom = loadImage("madmom.png");
  crack = loadImage("crack.png");
  censor = loadImage("censor.jpg");
  uparrow = loadImage("uparrow.png");
  downarrow = loadImage("downarrow.png");
}

void draw(){
  if (state=="pregame"){
    background(0);
    for (int x = 0; x <780; x+=10){
      for(int y = 0; y < 750; y+=10){
        fill(random(0,255));
        rect(x, y, 10, 10);      
      } }
    noStroke();
    fill(75, 50, 12);
    rect(0, 0, 50, 750);
    rect(0, 0, 900, 50);
    rect(0, 700, 1000, 60);
    rect(730, 0, 270, 750); 
    textAlign(CENTER);
    textSize(40);    
    fill(255);
    text("Click to start the game", 380, 360);
    fill(0);
    rect(770, 100, 190, 350);
    fill(180,174,166);
    ellipse(868, 200, 100, 100);
    ellipse(868, 350, 100, 100);
  }
  else if (state=="intro"){
    fill(0);
    rect(10,10, 780, 750);
    fill(75, 50, 12);
    rect(0, 0, 50, 750);
    rect(0, 0, 900, 50);
    rect(0, 700, 1000, 60);
    rect(730, 0, 270, 750); 
    textAlign(CENTER);
    textSize(28);
    fill(255);
    text("Sophia snuck downstairs to watch TV", 385, 150);
    text("Get her sleepy or her mom will get mad", 387, 200);
    fill(153, 245, 193);
    text("Instruction:", 380, 300);
    textSize(20);
    text("Press on the remote to channel surf", 380, 350);
    text("When you want to make a choice, press select on that channel", 380, 380);
    text("You can choose up to 3 channels to see if Sophia falls asleep", 380, 410);
    fill(255);
    textSize(28);
    text("Click to continue", 380, 550);
    fill(0);
    rect(770, 100, 190, 350);
    fill(180,174,166);
    ellipse(868, 200, 100, 100);
    ellipse(868, 350, 100, 100);    
  }
  if (state=="scary"){
    background (237, 242, 203);
    tv();
    textAlign(CENTER);
    textSize(16);
    remote();
    fill(random(0,255));
    rect(100, 110, 520, 320);
    frame = (frame+1)%numFrames;  // Use % to cycle through frames
    image(blood[frame], 100, 110, 520, 300);
    fill(255);
    ellipse(350, 300, 90, 100);
    fill(0);
    triangle(315, 280, 345, 280, 330, 300);
    triangle(355, 280, 385, 280, 370, 300);
    ellipse(350, 330, 40, 20);
    image(chiller, 510, 375, 100, 50);
    person();
    image(couch, 70, 600, 550, 200);  
  }
  if (state == "action"){
    background (237, 242, 203);
    tv();
    textAlign(CENTER);
    textSize(16);
    remote();
    image(carscene, 100, 110, 520, 320);
    image(car, 200, 340, 250, 100);
    frame = (frame+1)%numFrames;  
    image(flame[frame], 80, 110, 520, 320); 
    //abc
    textAlign(CENTER);
    textSize(40);
    fill(0);
    ellipse(550, 360, 100, 100);
    fill(255);
    text("abc", 550, 373);
    textSize(50);
    person();
    image(couch, 70, 600, 550, 200);
  } 
  if (state=="comedy"){
    textSize(16);
    background (237, 242, 203);
    tv();
    remote();
    fill(0);
    rect(100, 110, 520, 320);
    frame = (frame+1)%numFramesComedy; 
    image(snl[frame], 100, 110, 520, 320); 
    image(nbc, 530, 340, 80, 80);
    person();
    image(couch, 70, 600, 550, 200);
  }  
  else if (state=="sci-fi"){
    background (237, 242, 203);
    tv();
    textAlign(CENTER);
    textSize(16);
    remote();
    image(night, 100, 110, 520, 320);
    frame = (frame+1)%numFramesSciFi;  // Use % to cycle through frames
    image(spaceship[frame], 300, 110, 100, 100);
    image(star, 280, 250, 50, 50);
    image(star, 300, 400, 10, 10);
    image(star, 110, 300, 20, 20);
    image(star, 500, 130, 40, 40);
    image(star, 470, 340, 30, 30);
    image(syfy, 520, 370, 90, 50);
    person();
    image(couch, 70, 600, 550, 200);
    
}  
  else if (state=="romance"){
    background (237, 242, 203);
    tv();
    textAlign(CENTER);
    textSize(16);
    remote();
    image(nature, 100, 110, 520, 320);
    fill(255, 231, 185);
    ellipse(278, 260, 70, 70);
    ellipse(450, 260, 70, 70);
    image(girlhair, 150, 200, 200, 200);
    image(guyhair, 400, 200, 100, 100);
    image(heart, 310, moveDown, 100, 100);
    image(hallmark, 520, 370, 105, 50);
    if (moveDown>=100 && moveDown <= 320){
      moveDown = moveDown + 0.8;
    } else {
      moveDown = 110;
    }
    person();
    image(couch, 70, 600, 550, 200);   
  }  
  
  else if (state=="mystery"){
    background (237, 242, 203);
    tv();
    textAlign(CENTER);
    textSize(16);
    remote();
    image(sherlock, 100, 110, 520, 320);
    image(magnifying, xmove, ymove, 100, 100); 
    image(detective, 350, 250, 100, 170);
    image(ae, 550, 370, 60, 50);
    person();
    image(couch, 70, 600, 550, 200);  
    if (xmove>=50 && xmove<=500 && ymove>=140 && ymove <=500){
      xmove -= 0.5;
      ymove -= 0.5;
    } else{
      xmove = 200;
      ymove=200;
    }
  } 
  else if (state=="history"){
    background (237, 242, 203);
    tv();
    textAlign(CENTER);
    textSize(16);
    remote();
    fill(250, 250, 250);
    rect(100, 110, 520, 320);
    image(eagle, 450, 130, 150, 150);
    frame = (frame+1)%numFramesFlag;  // Use % to cycle through frames
    image(flag[frame], 140, 130, 270, 170);
    image(historylogo, 525, 330, 100, 100);
    stroke(4);
    line(143, 130, 140, 400);
    person();
    image(couch, 70, 600, 550, 200);  
  } 
  else if (state=="music"){
    textSize(16);
    background (237, 242, 203);
    tv();
    remote();
    image(room, 100, 110, 520, 320);
    image(guitar, 160, 250, 200, 180);
    image(mtv, 530, 345, 100, 100);
    musicnote();
    person();
    image(couch, 70, 600, 550, 200);  
  }
  else if (state=="sports"){
    background (237, 242, 203);
    tv();
    textAlign(CENTER);
    textSize(16);
    remote();
    fill(#E0DEDC);
    rect(100, 110, 520, 320);
    frame = (frame+1)%numFramesHoop;  // Use % to cycle through frames
    image(hoop[frame], 150, 130, 240, 170);
    fill(0, 0, random(0,255));
    text("Steph Curry with the 3 pointer!!!", 276, 350);
    fill(255, 0, 0);
    textSize(50);
    text("ESPN", 550, 420);
    person();
    image(couch, 70, 600, 550, 200); 
  }
  else if (state == "destroy"){
    background (250, 197, 203);
    fill(75, 50, 12);
    rect(400, 70, 500, 300);
    fill(0);
    rect(430, 100, 440, 240);
    image(censor, 430, 100, 440, 240);
    image(crack, 470, 95, 200, 200);
    textAlign(CENTER);
    textSize(24);
    fill(0);
    text("Uh oh, Sophia did not go back to sleep", 700, 450);
    text("Her mom got mad at her", 700, 500);
    text("Help her mom destroy the TV by click on it", 700, 550);
    image(madmom, 200, 260, 250, 400); 
    
  }
  else if (state=="nosleep"){
    background (250, 197, 203);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("Try again?", width/2, 220);
    image(madmom, 200, 260, 250, 400);
    fill(#4C2FF7);
    rect(462, 665, 480, 50);
    fill(random(0,255));
    text("Click here to restart the game", 700, 700);
  }   
  else if (state=="sleep"){
    background (197, 240, 250);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("Sophia fell asleep!", width/2, 210);
    text("Good Job!", width/2, 260);
    image(sleep, 100, 350);
    fill(#4C2FF7);
    rect(462, 665, 480, 50);
    fill(random(0,255));
    text("Click here to restart the game", 700, 700);
  }
  println(state);
  println(hit);
}

float xposition = 290;
float yposition = 300;
float xposition1 = 340;
float yposition1 = 300;
float xpos = 300;
float xpos1 = 350;
float ypos = 240;
float ypos1 = 240;
float ypos2 = 300;

void musicnote(){
  noStroke();
  fill(255, 122, 13);
  ellipse(xposition, yposition, 25, 25);
  ellipse(xposition1, yposition1, 25, 25);
  stroke(255, 122, 13);
  strokeWeight(5);
  line(xpos, ypos, xpos1, ypos);
  line(xpos, ypos, xpos, ypos2);
  line(xpos1, ypos2, xpos1, ypos);
  if (xposition>=200 && xposition <= 400 && yposition>=240 && yposition<=400){
      xposition = xposition + 0.5;
      yposition = yposition - 0.5;
      xpos = xpos + 0.5;
      xpos1 = xpos1 + 0.5;
      ypos = ypos - 0.5;
      ypos1 = ypos1 - 0.5;
      ypos2 = ypos2 - 0.5;
    } else {
      xposition = 290;
      yposition = 300;
      xposition1 = 340;
      yposition1 = 300;
      xpos = 300;
      xpos1 = 350;
      ypos = 240;
      ypos1 = 240;
      ypos2 = 300;
    }
  if (xposition1>=200 && xposition1 <= 400 && yposition1>=200 && yposition1<=400){
    xposition1 = xposition1 + 0.5;
    yposition1 = yposition1 - 0.5;
    } 
}

void person(){
  noStroke();
    fill(229,148,240);
    rect(300, 570, 100, 100);
    fill(245, 175, 89);
    ellipse(350, 530, 100, 100);
    image(hair, 275, 446, 200, 300);
}

void tv(){
    //brown
    fill(75, 50, 12);
    rect(60, 70, 600, 400);
}

void remote(){
    //remote
    fill(0);
    rect(750, 100, 200, 500);
    ellipse(850, 600, 200, 90);
    fill(180,174,166);
    rect(780, 380, 30, 30); //1
    rect(835, 380, 30, 30); //2
    rect(890, 380, 30, 30); //3    
    rect(780, 440, 30, 30); //4
    rect(835, 440, 30, 30); //5
    rect(890, 440, 30, 30); //6   
    rect(780, 500, 30, 30); //7
    rect(835, 500, 30, 30); //8
    rect(890, 500, 30, 30); //9
    rect(780, 130, 140, 220);
    fill(0);
    rect(800, 300, 100, 30); //select
    rect(830, 170, 40, 40); //up
    rect(830, 240, 40, 40); //down
    image(uparrow, 835, 175, 30, 30);
    image(downarrow, 835, 245, 30, 30);
    textAlign(CENTER);
    fill(#FCF221);
    text("select", 850, 320);
    fill(0);
    text("1", 794, 400);
    text("2", 849, 400);
    text("3", 904, 400);
    text("4", 794, 460);
    text("5", 849, 460);
    text("6", 904, 460);
    text("7", 794, 520);
    text("8", 849, 520);
    text("9", 904, 520);
}

void mousePressed(){
  if (state == "pregame"){
    state = "intro";
  }
  else if (state == "intro"){
    state = "scary";
  }
  if (mouseX>780 && mouseX<780+30 && mouseY>380 && mouseY<380+30){
    rect(780, 380, 30, 30); //1
    state = "scary";
  }
  //action
  if (mouseX>835 && mouseX<835+30 && mouseY>380 && mouseY<380+30){
    rect(835, 380, 30, 30); //2
    state = "action";
  }
  if (mouseX>890 && mouseX<890+30 && mouseY>380 && mouseY<380+30){  
    rect(890, 380, 30, 30); //3 
    state = "comedy";
  }
  if (mouseX>780 && mouseX<780+30 && mouseY>440 && mouseY<440+30){
    rect(780, 440, 30, 30); //4
    state = "sci-fi";
  }
  if (mouseX>835 && mouseX<835+30 && mouseY>440 && mouseY<440+30){
    rect(835, 440, 30, 30); //5
    state = "romance";
  }  
  if (mouseX>890 && mouseX<890+30 && mouseY>440 && mouseY<440+30){  
    rect(890, 440, 30, 30); //6 
    state = "mystery";
  }
  if (mouseX>780 && mouseX<780+30 && mouseY>500 && mouseY<500+30){
    rect(780, 500, 30, 30); //7
    state = "history";
  }
  if (mouseX>835 && mouseX<835+30 && mouseY>500 && mouseY<500+30){
    rect(835, 500, 30, 30); //8
    state = "music";
  }
  if (mouseX>890 && mouseX<890+30 && mouseY>500 && mouseY<500+30){
    rect(890, 500, 30, 30); //9 
    state = "sports";
  }
  if (state == "scary" && mouseX>800 && mouseX<800+100 && mouseY>300 && mouseY<300+30){
    rect(800, 300, 100, 30); //select
    counter += 10;
    channels +=1;
  }
  if (state == "action" && mouseX>800 && mouseX<800+100 && mouseY>300 && mouseY<300+30){
    rect(800, 300, 100, 30); //select
    counter += 20;
    channels +=1;
  }
  if (state == "comedy" && mouseX>800 && mouseX<800+100 && mouseY>300 && mouseY<300+30){
    rect(800, 300, 100, 30); //select
    counter += 20;
    channels +=1;
  }  
  if (state == "sci-fi" && mouseX>800 && mouseX<800+100 && mouseY>300 && mouseY<300+30){
    rect(800, 300, 100, 30); //select
    counter += 30;
    channels +=1;
  }  
  if (state == "romance" && mouseX>800 && mouseX<800+100 && mouseY>300 && mouseY<300+30){
    rect(800, 300, 100, 30); //select
    counter += 50;
    channels +=1;
  }  
  if (state == "mystery" && mouseX>800 && mouseX<800+100 && mouseY>300 && mouseY<300+30){
    rect(800, 300, 100, 30); //select
    counter += 40;
    channels +=1;
  } 
  if (state == "history" && mouseX>800 && mouseX<800+100 && mouseY>300 && mouseY<300+30){
    rect(800, 300, 100, 30); //select
    counter += 60;
    channels +=1;
  }    
  if (state == "music" && mouseX>800 && mouseX<800+100 && mouseY>300 && mouseY<300+30){
    rect(800, 300, 100, 30); //select
    counter += 60;
    channels +=1;
  }    
  if (state == "sports" && mouseX>800 && mouseX<800+100 && mouseY>300 && mouseY<300+30){
    rect(800, 300, 100, 30); //select
    counter += 80;
    channels +=1;
  } 
  //down
  if (state== "scary" && mouseX>830 && mouseX<830+40 && mouseY>240 && mouseY<240+40){
    rect(830, 240, 40, 40); //up
    state = "action";
  }
  else if (state== "action" && mouseX>830 && mouseX<830+40 && mouseY>240 && mouseY<240+40){
    rect(830, 240, 40, 40); //up
    state = "comedy";
  }
  else if (state== "comedy" && mouseX>830 && mouseX<830+40 && mouseY>240 && mouseY<240+40){
    rect(830, 240, 40, 40); //up
    state = "sci-fi";
  }
  else if (state== "sci-fi" && mouseX>830 && mouseX<830+40 && mouseY>240 && mouseY<240+40){
    rect(830, 240, 40, 40); //up
    state = "romance";
  }
  else if (state== "romance" && mouseX>830 && mouseX<830+40 && mouseY>240 && mouseY<240+40){
    rect(830, 240, 40, 40); //up
    state = "mystery";
  }
  else if (state== "mystery" && mouseX>830 && mouseX<830+40 && mouseY>240 && mouseY<240+40){
    rect(830, 240, 40, 40); //up
    state = "history";
  }
  else if (state== "history" && mouseX>830 && mouseX<830+40 && mouseY>240 && mouseY<240+40){
    rect(830, 240, 40, 40); //up
    state = "music";
  }
  else if (state== "music" && mouseX>830 && mouseX<830+40 && mouseY>240 && mouseY<240+40){
    rect(830, 240, 40, 40); //up
    state = "sports";
  }
  else if (state== "sports" && mouseX>830 && mouseX<830+40 && mouseY>240 && mouseY<240+40){
    rect(830, 240, 40, 40); //up
    state = "scary";
  }
  //up
  if (state == "scary" && mouseX>830 && mouseX<830+40 && mouseY>170 && mouseY<170+40){
    rect(830, 170, 40, 40); //up
    state = "sports";
  }
  if (state == "action" && mouseX>830 && mouseX<830+40 && mouseY>170 && mouseY<170+40){
    rect(830, 170, 40, 40); //up
    state = "scary";
  }  
  if (state == "comedy" && mouseX>830 && mouseX<830+40 && mouseY>170 && mouseY<170+40){
    rect(830, 170, 40, 40); //up
    state = "action";
  }  
  if (state == "sci-fi" && mouseX>830 && mouseX<830+40 && mouseY>170 && mouseY<170+40){
    rect(830, 170, 40, 40); //up
    state = "comedy";
  }  
  if (state == "romance" && mouseX>830 && mouseX<830+40 && mouseY>170 && mouseY<170+40){
    rect(830, 170, 40, 40); //up
    state = "sci-fi";
  }  
  if (state == "mystery" && mouseX>830 && mouseX<830+40 && mouseY>170 && mouseY<170+40){
    rect(830, 170, 40, 40); //up
    state = "romance";
  }  
  if (state == "history" && mouseX>830 && mouseX<830+40 && mouseY>170 && mouseY<170+40){
    rect(830, 170, 40, 40); //up
    state = "mystery";
  }  
  if (state == "music" && mouseX>830 && mouseX<830+40 && mouseY>170 && mouseY<170+40){
    rect(830, 170, 40, 40); //up
    state = "history";
  }  
  if (state == "sports" && mouseX>830 && mouseX<830+40 && mouseY>170 && mouseY<170+40){
    rect(830, 170, 40, 40); //up
    state = "music";
  }   
  if (channels == 3 && counter < 100){
    state = "destroy";
  }
  if (channels == 3 && counter >= 100){
    state = "sleep";
  }
  if (state == "destroy" && mouseX>400 && mouseX<400+500 && mouseY>70 && mouseY<70+300){
    rect(400, 70, 500, 300);
    hit +=1;
  }
  if (state == "destroy" && hit >= 10){
    state = "nosleep";
  }
  if (state == "sleep" && mouseX>462 && mouseX<462+480 && mouseY>665 && mouseY<665+50|| state == "nosleep" && mouseX>462 && mouseX<462+480 && mouseY>665 && mouseY<665+50){  
    rect(462, 665, 480, 50);
    state = "pregame";
    counter = 0;
    channels = 0;
    hit = 0;
  }

}