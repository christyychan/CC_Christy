import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import processing.video.*;

AudioPlayer music;

PImage name;
PImage welcome;
PImage photobooth;
PImage photobooth2;
PImage photostrip;
PImage instructions;
PImage instructions1;
PImage smile;
PImage frown;
PImage curtain1; 
PImage curtain2;
PImage wheel;
PImage prize;
PImage bottle_instructions;
PImage bottle_background;
PImage hammer;
PImage hammer1;
PImage striker_background;
PImage bell;
PImage weak;
PImage okay;
PImage mediocre;
PImage somewhat_strong;
PImage winner;
PImage background;
PImage tent1highlight;
PImage tent2highlight;
PImage tent3highlight;
PImage prizehighlight;
PImage prize_background;
PImage selectbear;
PImage bear;
PImage selectpaddle;
PImage paddle;
PImage selectsquid;
PImage squid;
PImage selectduck;
PImage duck;
PImage selectball;
PImage ball;
PImage error;
PImage dart_instructions;
PImage darterror;
PImage cart;
PImage cartticket;

String state = "pregame";
int moveTent = -200;
int moveTent1 = -600;
int moveTent2 = -1050;
int moveWheel = 400;
int movePrize = 990;
int moveVideo = 1050;
int moveText = 1100;
int start = 450;
int tickets = 0;
int moveBackground = -1200;
String object = "";

int moveStriker = 200;

int shots = 6;
int moveBall = 485;
int moveBallx = mouseX;
int bottle_tickets = 0;
int colors = 0;
int colors2 = 0;
int colors3= 0;
int colors4 = 0;
int colors7 = 0;

int count = 0;
int ticket1= int(random(10,20));
int ticket2= int(random(10,20));
int ticket3= int(random(10,20));
int ticket4= int(random(10,20));
int ticket5= int(random(10,20));
int ticket6= int(random(10,20));
float x1 = random(0,1100);
float y1 = random(70,100);
float x2 = random(0,1200);
float y2 = random(170,200);
float x3 = random(0,1200);
float y3 = random(270,300);
float x4 = random(0,1200);
float y4 = random(470,500);
float x5 = random(0,1200);
float y5 = random(570,600);
float x6 = random(0,1200);
float y6 = random(660,670);

int frame = 0;
int numFrames = 31;
PImage[] ferris = new PImage[numFrames];
Capture video = new Capture(this, "name=FaceTime HD Camera,size=1280x720,fps=30");
Capture video1 = new Capture(this, "name=FaceTime HD Camera,size=1280x720,fps=30");

void captureEvent(Capture video){
  video.read();
}
void captureEvent1(Capture video1){
  video1.read();
}

void setup(){
  size(1200, 700);
  video = new Capture(this, 720, 500);
  
  video1 = new Capture(this, 720, 500);
  
  Minim minim;
  minim = new Minim(this);
  music = minim.loadFile("Circus Waltz FX.mp3");
  music.play();
  music.loop();
  
  name = loadImage("name.png");
  welcome = loadImage("welcome.png");
  photobooth = loadImage("photobooth.png");
  photobooth2 = loadImage("photobooth2_1.png");
  photostrip = loadImage("photostrip.png");
  smile = loadImage("smile.png");
  frown = loadImage("frown.png");
  curtain1 = loadImage("curtain1.png");
  curtain2 = loadImage("curtain2.png");
  tent1highlight = loadImage("tent1highlight.png");
  tent2highlight = loadImage("tent2highlight.png");
  tent3highlight = loadImage("tent3highlight.png");
  prizehighlight = loadImage("prizehighlight.png");

  wheel = loadImage("wheel.png");
  prize = loadImage("prize.png");
  //person = loadImage("person.png");
  hammer = loadImage("hammer.png");
  hammer1 = loadImage("hammer copy.png");
  striker_background = loadImage("striker background.png");
  bell = loadImage("bell.png");
  weak = loadImage("weak.png");
  okay = loadImage("okay.png");
  mediocre = loadImage("mediocre.png");
  somewhat_strong = loadImage("somewhat strong.png");
  winner = loadImage("winner.png");
  background = loadImage("background_1.png");
  instructions = loadImage("instructions.png");
  instructions1 = loadImage("striker instructions.png");
  bottle_background = loadImage("bottle background.png");
  bottle_instructions = loadImage("bottle instructions.png");
  dart_instructions = loadImage("dart instructions.png");
  darterror = loadImage("darterror.png");
  cart = loadImage("cart.png");
  cartticket = loadImage("cartticket.png");
  
  prize_background = loadImage("prize_background.png");
  selectbear = loadImage("selectbear.png");
  bear = loadImage("bear.png");
  selectpaddle = loadImage("selectpaddle.png");
  paddle = loadImage("paddle.png");
  selectsquid = loadImage("selectsquid.png");
  squid = loadImage("squid.png");
  selectduck = loadImage("selectduck.png");
  duck = loadImage("duck.png");
  selectball = loadImage("selectball.png");
  ball = loadImage("ball.png");
  error = loadImage("error.png");

  ferris[0]  = loadImage("data/ferris0.gif");
  ferris[1]  = loadImage("data/ferris1.gif");
  ferris[2]  = loadImage("data/ferris2.gif");
  ferris[3]  = loadImage("data/ferris3.gif");
  ferris[4]  = loadImage("data/ferris4.gif");
  ferris[5]  = loadImage("data/ferris5.gif");
  ferris[6]  = loadImage("data/ferris6.gif");
  ferris[7]  = loadImage("data/ferris7.gif");
  ferris[8]  = loadImage("data/ferris8.gif");
  ferris[9]  = loadImage("data/ferris9.gif");
  ferris[10]  = loadImage("data/ferris10.gif");
  ferris[11]  = loadImage("data/ferris11.gif");
  ferris[12]  = loadImage("data/ferris12.gif");
  ferris[13]  = loadImage("data/ferris13.gif");
  ferris[14]  = loadImage("data/ferris14.gif");
  ferris[15]  = loadImage("data/ferris15.gif");
  ferris[16]  = loadImage("data/ferris16.gif");
  ferris[17]  = loadImage("data/ferris17.gif");
  ferris[18]  = loadImage("data/ferris18.gif");
  ferris[19]  = loadImage("data/ferris19.gif");
  ferris[20]  = loadImage("data/ferris20.gif");
  ferris[21]  = loadImage("data/ferris21.gif");
  ferris[22]  = loadImage("data/ferris22.gif");
  ferris[23]  = loadImage("data/ferris23.gif");
  ferris[24]  = loadImage("data/ferris24.gif");
  ferris[25]  = loadImage("data/ferris25.gif");
  ferris[26]  = loadImage("data/ferris26.gif");
  ferris[27]  = loadImage("data/ferris27.gif");
  ferris[28]  = loadImage("data/ferris28.gif");
  ferris[29]  = loadImage("data/ferris29.gif");
  ferris[30]  = loadImage("data/ferris30.gif");
}

void draw(){
  if (state=="pregame"){
    video.start();
    video1.start();
    tickets = 0;
    image(name, 0,0,1200,700);
    textAlign(CENTER);
    textSize(50);
    fill(0);
    text("Type in your name", width/2, 200);
    fill(0);
    text(object, width/2, 300);    
    rect(450, 500, 300, 100);
    fill(255);
    text("Submit", 600, 570);
  }
  if (state == "welcome"){
    image(welcome, 0,0,1200,700);
    fill(0);
    textSize(100);
    text(object, 530, 360);
    rect(450, 500, 300, 100);
    fill(255);
    textSize(50);
    text("Continue", 600, 570);
  }
  if (state == "picture"){
    noStroke();
    image(photobooth, 0,0,1200,700);
    image(video,230,150);
    fill(255);
    rect(230, 150, 720/3,500);
    rect(710, 150, 720/3,500);
    rect(470, 500, 300, 250);
    image(curtain1, 0, 0, 420, 700);
    image(curtain2, 780, 0, 420, 700);
    image(smile, 500, 159, 182,317);
    stroke(1);
    fill(0);
    rect(450, 550, 300, 100);
    fill(255);
    text("Take", 600, 620);
  }
  if (state == "picture1"){
    noStroke();
    background(255);   
    image(video1,230,150);
    fill(255);
    rect(230, 150, 720/3,500);
    rect(710, 150, 720/3,500);
    rect(470, 500, 300, 250);
    //image(curtain1, 0, 0, 420, 700);
    //image(curtain2, 780, 0, 420, 700);
    image(photobooth2, 0,0,1200,700);
    image(frown, 500, 159, 182, 317);
    stroke(1);
    fill(0);
    rect(450, 550, 300, 100);
    fill(255);
    text("Take", 600, 620);
  }
  if (state == "photostrip"){
    image(photostrip, 0,0,1200,700);
    image(video1, 250,150,250,200);
    image(video, 250,450,250,200);
  }
  if (state == "instructions"){
    image(instructions, 0, 0, 1200, 700);
    fill(0);
    rect(270, 500, 300, 100);
    fill(255);
    text("Play", 420, 570);
  }
  if (state == "setting"){
    image(background, moveBackground, -100, width*3, height+100);
    fill(0);
    textSize(40);
    text("Tickets: " + tickets, 150, 50);
    frame = (frame+1)%numFrames; 
    image(ferris[frame], moveWheel, 60, 420+50, 500+100);
    fill(255);
    triangle(50, 635, 90, 620, 90, 660);
    triangle(1130, 635, 1090, 620, 1090, 660);
    textSize(20);
    image(video, 1050, 0, 150, 100);
    fill(0);
    text(object, 1100, 120);
    
    if (movePrize <= 70){
      moveTent -=0;
      moveTent1 -=0;
      moveTent2 -=0;
      moveWheel -=0;
      movePrize -=0;
      moveVideo -=0;
      moveText -=0;
      moveBackground -=0;
  }
    else if(mouseX >= 1000){
      moveTent -=20;
      moveTent1 -=20;
      moveTent2 -=20;
      moveWheel -=20;
      movePrize -=20;
      moveVideo -=20;
      moveText -=20;
      moveBackground -=20;
    }
    if (moveTent1 >=700){
      moveTent -=0;
      moveTent1 -=0;
      moveTent2 -=0;
      moveWheel -=0;
      movePrize -=0;
      moveVideo -=0;
      moveText -=0;
      moveBackground -=0;
    }
    else if (mouseX <=200){
      moveTent +=20;
      moveTent1+=20;
      moveTent2+=20;
      moveWheel +=20;
      movePrize +=20;
      moveVideo +=20;
      moveText +=20;
      moveBackground +=20;
    }
  
  if (state == "setting" && mouseX >=moveTent && mouseX<=moveTent+390 && mouseY >=180 && mouseY<=180+420){
      image(tent1highlight, moveBackground, -100, width*3, height+100);
      fill(0);
      textSize(40);
      text("Tickets: " + tickets, 150, 50);
      frame = (frame+1)%numFrames; 
      image(ferris[frame], moveWheel, 60, 420+50, 500+100);
      fill(255);
      triangle(50, 635, 90, 620, 90, 660);
      triangle(1130, 635, 1090, 620, 1090, 660);
      textSize(20);
      image(video, 1050, 0, 150, 100);
      fill(0);
      text(object, 1100, 120);
    }
    if (state == "setting" && mouseX >=moveTent1 && mouseX<=moveTent1+350 && mouseY >=180 && mouseY<=180+420){
      image(tent2highlight, moveBackground, -100, width*3, height+100);
      fill(0);
      textSize(40);
      text("Tickets: " + tickets, 150, 50);
      frame = (frame+1)%numFrames; 
      image(ferris[frame], moveWheel, 60, 420+50, 500+100);
      fill(255);
      triangle(50, 635, 90, 620, 90, 660);
      triangle(1130, 635, 1090, 620, 1090, 660);
      textSize(20);
      image(video, 1050, 0, 150, 100);
      fill(0);
      text(object, 1100, 120);
    }
  if (state == "setting" && mouseX >=moveTent2 && mouseX<=moveTent2+360 && mouseY >=180 && mouseY<=180+420){
      image(tent3highlight, moveBackground, -100, width*3, height+100);
      fill(0);
      textSize(40);
      text("Tickets: " + tickets, 150, 50);
      frame = (frame+1)%numFrames; 
      image(ferris[frame], moveWheel, 60, 420+50, 500+100);
      fill(255);
      triangle(50, 635, 90, 620, 90, 660);
      triangle(1130, 635, 1090, 620, 1090, 660);
      textSize(20);
      image(video, 1050, 0, 150, 100);
      fill(0);
      text(object, 1100, 120);
    } 
  if (state == "setting" && mouseX >=movePrize && mouseX<=movePrize+380 && mouseY >=250 && mouseY<=250+400){
      image(prizehighlight, moveBackground, -100, width*3, height+100);
      fill(0);
      textSize(40);
      text("Tickets: " + tickets, 150, 50);
      frame = (frame+1)%numFrames; 
      image(ferris[frame], moveWheel, 60, 420+50, 500+100);
      fill(255);
      triangle(50, 635, 90, 620, 90, 660);
      triangle(1130, 635, 1090, 620, 1090, 660);
      textSize(20);
      image(video, 1050, 0, 150, 100);
      fill(0);
      text(object, 1100, 120);
    }     
  }
  if (state== "cart"){
    background(#B6E3EE);
    image(cart, 218.5, 53.7, 763, 593);
    image(video, 510, 230, 200, 180);
    fill(255);
    rect(40,530,200,50);
    textSize(40);
    fill(0);
    text("back", 140,567);
  }
  if (state == "cartticket"){
    background(#B6E3EE);
    image(cart, 218.5, 53.7, 763, 593);
    image(video, 510, 230, 200, 180);
    image(cartticket, 122, 204, 956, 292);
    
    fill(255);
    rect(40,530,200,50);
    textSize(40);
    fill(0);
    text("back", 140,567);
  }
  if (state == "highstriker_instructions"){
    background(255);
    image(instructions1, 226, 100, 748,598);
  }
  if (state == "highstriker"){
    textSize(40);
    striker();
    image(hammer,450, mouseY-100, 200, 200);
  }
  if (state == "hit"){
    background(255);
    striker();
    image(hammer1, 450, 350, 300, 300);
    
    if(start <=100){
      image(winner, 270, moveStriker, 727, 211);
    }
    if(start >100 && start<=200){
      image(somewhat_strong, 270, moveStriker, 727, 211);
    }
    if(start >200 && start<=300){
      image(mediocre, 270, moveStriker, 727, 211);
    }
    if(start >300 && start<=400){
      image(okay, 270, moveStriker, 727, 211);
    }
    if(start >400){
      image(weak, 270, moveStriker, 727, 211);
    }
    if (moveStriker >=height+100){
      moveStriker =0;
    }
    else{
      moveStriker+=10;
    }
  }
  if (state == "prize"){
    image(prize_background, 0,0,1200,700);
    fill(255);
    rect(40,530,200,50);
    textSize(40);
    fill(0);
    text("back", 140,567);
    if (state == "prize" && mouseX>100 && mouseX<100+250 && mouseY>45 && mouseY<45+230){
      image(selectbear, 0,0,1200,700);
      fill(255);
      rect(40,530,200,50);
      fill(0);
      text("back", 140,567);
    }
    else if (state == "prize" && mouseX>850 && mouseX<850+200 && mouseY>70 && mouseY<70+200){
      image(selectball, 0,0,1200,700);
      fill(255);
    rect(40,530,200,50);
    fill(0);
    text("back", 140,567);
    }
    else if (state == "prize" && mouseX>500 && mouseX<500+200 && mouseY>125 && mouseY<125+300){
      image(selectsquid, 0,0,1200,700);
      fill(255);
      rect(40,530,200,50);
      fill(0);
      text("back", 140,567);
    }
    else if (state == "prize" && mouseX>760 && mouseX<760+150 && mouseY>500 && mouseY<500+165){
      image(selectduck, 0,0,1200,700);
      fill(255);
      rect(40,530,200,50);
      fill(0);
      text("back", 140,567);
    }
    else if (state == "prize" && mouseX>190 && mouseX<190+300 && mouseY>520 && mouseY<520+160){
      image(selectpaddle, 0,0,1200,700);
      fill(255);
      rect(40,530,200,50);
      fill(0);
      text("back", 140,567);
    }
  }
  if (state == "dart_instructions"){
    background(255);
    image(dart_instructions, 226, 100, 748,598);
  }
  if (state == "dart"){
    background(#92E0ED);
    fill(#92E0ED);
    noStroke();
    rect(x1-50, y1-50, 100,100);
    rect(x2-50, y2-50,100,100);
    rect(x3-50, y3-50,100,100);
    rect(x4-50, y4-50,100,100);
    rect(x5-50, y5-50,100,100);
    rect(x6-50, y6-50,100,100);
  
    stroke(0);
    strokeWeight(1);
    textSize(15);
    fill(255);
    
    fill(#FAFF6A);    
    //duck1
    ellipse(x1,y1,100,70);
    ellipse(x1+50, y1-40,50,50);
    //duck2
    ellipse(x2,y2,100,70);
    ellipse(x2+50, y2-40,50,50);
    //duck3
    ellipse(x3,y3,100,70);
    ellipse(x3+50, y3-40,50,50);
    //duck4
    ellipse(x4,y4,100,70);
    ellipse(x4+50, y4-40,50,50);
    //duck5
    ellipse(x5,y5,100,70);
    ellipse(x5+50, y5-40,50,50);
    //duck6
    ellipse(x6,y6,100,70);
    ellipse(x6+50, y6-40,50,50);
    
    fill(#FF9A03);
    triangle(x1+73, y1-30, x1+73, y1-50, x1+90, y1-40);
    triangle(x2+73, y2-30, x2+73, y2-50, x2+90, y2-40);
    triangle(x3+73, y3-30, x3+73, y3-50, x3+90, y3-40);
    triangle(x4+73, y4-30, x4+73, y4-50, x4+90, y4-40);
    triangle(x5+73, y5-30, x5+73, y5-50, x5+90, y5-40);
    triangle(x6+73, y6-30, x6+73, y6-50, x6+90, y6-40);
    image(video, x1+30-5,y1-60-5,50,50);
    image(video1, x2+30-5,y2-60-5,50,50);
    image(video, x3+30-5,y3-60-5,50,50);
    image(video1, x4+30-5,y4-60-5,50,50);
    image(video, x5+30-5,y5-60-5,50,50);
    image(video1, x6+30-5,y6-60-5,50,50);
    
    fill(255);
    rect(40,530,200,50);
    textSize(40);
    fill(0);
    text("back", 140,567);
    
    if (state == "dart" && x1>width+100){
        x1 =-100;      
      }
      else {
         x1++;
       }
      if (state == "dart" && x2>width+100){
        x2 =-100;      
      }
      else {
         x2++;
       }
     if (state == "dart" && x3>width+100){
        x3 =-100;      
      }
      else {
         x3++;         
       }
     if (state == "dart" && x4>width+100){
        x4 =-100;      
      }
      else {
         x4++;         
       }
     if (state == "dart" && x5>width+100){
        x5 =-100;      
      }
      else {
         x5++;
         
       }
      if (state == "dart" && x6>width+100){
        x6 =-100;      
      }
      else {
         x6++;
         
       }
  }
  if (state == "ticket1"){
        fill(#F1FF5D);
        rect(250,150,700,200);
        fill(0);
        textSize(50);
        text("You won     tickets", width/2, 240);
        text(ticket1, 621, 240);  
        text("You have     tries left", width/2, 290);
        text(str(3-count), 621, 290);
          }       
      if (state == "ticket2"){
          fill(#F1FF5D);
          rect(250,150,700,200);
          fill(0);
          textSize(50);
          text("You won     tickets", width/2, 240);
          text(ticket2, 621, 240);
          text("You have     tries left", width/2, 290);
          text(str(3-count), 621, 290);
          }
      if (state == "ticket3"){
          fill(#F1FF5D);
          rect(250,150,700,200);
          fill(0);
          textSize(50);
          text("You won     tickets", width/2, 240);
          text(ticket3, 621, 240);
          text("You have     tries left", width/2, 290);
          text(str(3-count), 621, 290);
          }
   if (state == "ticket4"){
          fill(#F1FF5D);
          rect(250,150,700,200);
          fill(0);
          textSize(50);
          text("You won     tickets", width/2, 240);
          text(ticket4, 621, 240);
          text("You have     tries left", width/2, 290);
          text(str(3-count), 621, 290);
          }
   if (state == "ticket5"){
          fill(#F1FF5D);
          rect(250,150,700,200);
          fill(0);
          textSize(50);
          text("You won     tickets", width/2, 240);
          text(ticket5, 621, 240);
          text("You have     tries left", width/2, 290);
          text(str(3-count), 621, 290);
          }
   if (state == "ticket6"){
          fill(#F1FF5D);
          rect(250,150,700,200);
          fill(0);
          textSize(50);
          text("You won     tickets", width/2, 240);
          text(ticket6, 621, 240);
          text("You have     tries left", width/2, 290);
          text(str(3-count), 621, 290);
          }
  if (state == "bottle_instructions"){
    background(255);
    image(bottle_instructions, 226, 100, 748,598);
  }
  if (state == "bottle"){
    background(bottle_background);
    textSize(90);
    fill(0);
    text(str(shots), 955, 155);
    fill(255);
    rect(40,530,200,50);
    textSize(40);
    fill(0);
    text("back", 140,567);
    
    //top row
    fill(colors);    
    rect(315+290, 70-20, 10, 20, 10, 10, 0,0);
    rect(305+290, 70,30,100,10,10,0,0);
    image(video, 315+250, 80, 100, 80);
    if (colors == 255){
      image(video1, 315+250, 80, 100, 80);      
    }
    
    //second row
    fill(colors2);
    rect(410+120, 340-150, 30, 100, 10, 10, 0, 0);
    rect(540, 340-170, 10, 20, 10, 10, 0, 0); 
    fill(colors3);
    rect(575+80, 340-150, 30, 100, 10, 10, 0, 0);
    rect(575+90, 340-170, 10, 40, 10, 10, 0, 0);
    image(video, 410+85, 340-170+30, 100, 80);
    if (colors2 == 255){
      image(video1, 410+85, 340-170+30, 100, 80);
    }
    image(video, 540+85, 340-170+30, 100, 80);
    if (colors3 == 255){
      image(video1, 540+85, 340-170+30, 100, 80);
    }
    //third row
    fill(colors4);
    rect(390, 540-210, 30, 100, 10, 10, 0, 0);
    rect(400, 540-230, 10, 20, 10, 10, 0, 0);
    image(video, 400-45, 540-230+30, 100,80);
    if (colors4 == 255){
      image(video1, 400-45, 540-230+30, 100,80);
    }
    fill(colors7);
    rect(790, 540-210, 30, 100, 10, 10, 0, 0);
    rect(800, 540-230, 10, 20, 10, 10, 0, 0);
    image(video, 800-45, 540-230+30, 100,80);
    if (colors7 == 255){
      image(video1, 800-45, 540-230+30, 100,80);
    }
    
    fill(255);
    rect(mouseX-25, 400+100, 50, 170);
    fill(0);
    textSize(10);
    text("100", mouseX-50, 400+100);
    text("50",mouseX-50, 450+100);
    text("25",mouseX-50, 500+100);
    text("0",mouseX-50, 550+100);
    fill(#FF0033);
    ellipse(moveBallx, moveBall, 20, 20);

    if (pmouseY>=400+100 && pmouseY<=600+100){
      fill(#F56A6A);
      rect(pmouseX-25, pmouseY, 50, 200);
    }
    
    if (shots>0 && mousePressed == true && mouseX>=595-5 && mouseX<=626+5 && pmouseY>=500 && pmouseY<=550 && colors!=255){
      //top row      
      colors = colors+255;
      bottle_tickets += 10;
    }
    else if (shots>0 && mousePressed == true && mouseX>=531-5 && mouseX<=561+5 && mouseY>550 && mouseY<=600 && colors2!=255){
     //second row
      colors2= colors2+255;   
      bottle_tickets +=5;
    }
    else if (shots>0 && mousePressed == true && mouseX>=655-5 && mouseX<=687+5 && mouseY>550 && mouseY<=600 && colors3!=255){
      colors3+=255;  
      bottle_tickets +=5;
    }
    else if(shots>0 && mousePressed == true && mouseX>=391-5 && mouseX<=423+5 && mouseY>600 && mouseY<=650 && colors4!=255){
      colors4+=255;   
      bottle_tickets +=3;
    }
    
    else if (shots>0 && mousePressed == true && mouseX>=790-5 && mouseX<=822+5 && mouseY>600 && mouseY<=650 && colors7!=255){
      colors7+=255;   
      bottle_tickets+=3;
    }
    println(mouseX);

  }
  if (state == "end of bottle"){
    background(bottle_background);
    fill(#6EAF6E);
    rect(250,150,700,200);
    fill(0);
    textSize(50);
    text("You won     tickets", width/2, 273);
    text(bottle_tickets, 621, 273);
    fill(255);
    rect(40,530,200,50);
    fill(0);
    textSize(40);
    text("back", 140,567);
  }
  if (state == "error"){
    image(error, 122.5, 204, 955, 292);
  }
  if (state == "bear"){
    image(bear, 122, 204, 956, 292);
  }
  if (state == "ball"){
    image(ball, 122, 204, 956, 292);
  }
  if (state == "paddle"){
    image(paddle, 122, 204, 956, 292);
  }
  if (state == "squid"){
    image(squid, 122, 204, 956, 292);
  }
  if (state == "duck"){
    image(duck, 122, 204, 956, 292);
  }
  if (state =="darterror"){
    image(darterror,122, 204, 956, 292);
  }
  
}
void striker(){
  background(striker_background);
  fill(244, 238, 66);
  rect(570, 50, 100, 450);
  fill(255, 0, 0);
  rect(570, 450, 100, 130);
  fill(0);
  ellipse(620, 530, 100, 50);
  rect(570, 500, 100, 30);
  fill(173, 171, 171);
  ellipse(620, 500, 100, 50);
  fill(0);
  ellipse(623, start, 20, 20);
  textSize(20);
  text("400", 520, 110);
  text("300", 520, 210);
  text("200", 520, 310);
  text("100", 520, 410);
  image(bell, 493, -70, 250, 250);
  fill(255);
  rect(40,530,200,50);
  fill(0);
  textSize(40);
  text("back", 140,567);
}

void keyPressed(){
  if (state =="pregame"){
    object += key;
    if (keyCode == BACKSPACE) {
      object ="";
    }}
}


void mousePressed(){
  if (state == "pregame" && mouseX>=450 && mouseX<=450+300 && mouseY>=500 && mouseY<=500+100){
    state = "welcome";
  }
  else if (state == "welcome" && mouseX>=450 && mouseX<=450+300 && mouseY>=500 && mouseY<=500+100){
    state = "picture";
  }
  else if (state == "picture" && mouseX>=450 && mouseX<=450+300 && mouseY>=550 && mouseY<=550+100){
    video.stop();
    state = "picture1";
  }
  else if (state == "picture1" && mouseX>=450 && mouseX<=450+300 && mouseY>=550 && mouseY<=550+100){
    video1.stop();
    state = "instructions";
  }
  
  else if (state == "instructions" && mouseX>=270 && mouseX<=270+300 && mouseY>=500 && mouseY<=500+100){
    state = "setting";
  }
  else if (state == "setting" && mouseX >=moveTent && mouseX<=moveTent+390 && mouseY >=180 && mouseY<=180+420){
    state = "highstriker_instructions"; 
    
  }
  else if (state == "highstriker_instructions"){
    state = "highstriker"; 
    
  }
  else if (state == "highstriker" && mouseX >=40 && mouseX<=40+200 && mouseY >=530 && mouseY<=530+50){
    state = "setting";
    start = 450;
  }
  else if (state == "highstriker"){
    state = "hit";
    if (mouseY<=100){
      start = mouseY;
      tickets+=50;
    }
    else if (mouseY > 100 && mouseY<=200){
      start = mouseY;
      tickets+=40;
    }
    else if(mouseY>200 && mouseY<=300){
      start = mouseY;
      tickets+=30;
    }
    else if (mouseY>300 && mouseY<=400){
      start = mouseY;
      tickets+=20;
    }
    else if (mouseY>400){
      start = mouseY;
      tickets+=10;
    }
  }
  else if (state == "hit" && mouseX >=40 && mouseX<=40+200 && mouseY >=530 && mouseY<=530+50){
    state = "setting";
    start = 450;
  }
  else if(state == "setting" && tickets <10 &&  mouseX>=moveWheel && mouseX<=moveWheel+420+50 && mouseY>= 60 && mouseY<= 60+20+50+500+100){
    state="cart";
  }
  else if (state == "setting" && mouseX >=movePrize && mouseX<=movePrize+380 && mouseY >=250 && mouseY<=250+400){
    state = "prize";
  }
  else if (state == "prize" && tickets >= 350 && mouseX>100 && mouseX<100+250 && mouseY>45 && mouseY<45+230){
      state = "bear";
    }
  else if (state == "prize" && tickets < 350 && mouseX>100 && mouseX<100+250 && mouseY>45 && mouseY<45+230){
      state = "error";
    }  
  else if (state == "prize" && tickets >= 300 && mouseX>850 && mouseX<850+200 && mouseY>70 && mouseY<70+200){
      state = "ball";
    }
  else if (state == "prize" && tickets < 300 && mouseX>850 && mouseX<850+200 && mouseY>70 && mouseY<70+200){
      state = "error";
    }  
  else if (state == "prize" && tickets >= 500 && mouseX>500 && mouseX<500+200 && mouseY>125 && mouseY<125+300){
      state = "squid";
    }
  else if (state == "prize" && tickets < 500 && mouseX>500 && mouseX<500+200 && mouseY>125 && mouseY<125+300){
      state = "error";
    }  
  else if (state == "prize" && tickets >= 50 && mouseX>760 && mouseX<760+150 && mouseY>500 && mouseY<500+165){
      state = "duck";
    }
  else if (state == "prize" && tickets < 50 && mouseX>760 && mouseX<760+150 && mouseY>500 && mouseY<500+165){
      state = "error";
    }  
  else if (state == "prize" && tickets >= 100 && mouseX>190 && mouseX<190+300 && mouseY>520 && mouseY<520+160){
      state = "paddle";
    }
  else if (state == "prize" && tickets < 100 && mouseX>190 && mouseX<190+300 && mouseY>520 && mouseY<520+160){
      state = "error";
    } 
  else if (state == "error" && mouseX >=100 && mouseX<=100+100 && mouseY >=500 && mouseY<=500+100){
    state = "setting";
  }  
  else if (state == "prize" && mouseX >=100 && mouseX<=100+100 && mouseY >=500 && mouseY<=500+100){
    state = "setting";
  }
  else if (state == "bear" || state == "squid" || state=="ball" || state=="duck" || state=="paddle"){
    state = "photostrip";
  }
   else if (state == "photostrip"){
    object ="";
    state = "pregame";
    count = 0;    
  }
  if (state == "setting" && mouseX >=moveTent1 && mouseX<=moveTent1+350 && mouseY >=180 && mouseY<=180+420){
    state = "bottle_instructions";    
  }
  else if (state == "bottle_instructions"){
    state = "bottle";
  }
  if (state == "setting" && count <= 2 && count>=0 && mouseX >=moveTent2 && mouseX<=moveTent2+360 && mouseY >=180 && mouseY<=180+420){
    state ="dart_instructions";
  }
  else if (state == "dart_instructions"){
    state = "dart";    
  }
  if (state == "dart" && count <= 2 && count>=0 && mouseX >= x1-50 && mouseX<=x1-50+100 && mouseY>=y1-50 && mouseY<=y1-50+100){
          tickets+=ticket1;
          count+=1;
          state = "ticket1";
          }       
  else if (state == "dart" && count <= 2 && count>=0 && mousePressed == true && mouseX >= x2-50 && mouseX<=x2-50+100 && mouseY>=y2-50 && mouseY<=y2-50+100){
          tickets+=ticket2;
          count+=1;
          state = "ticket2";
          }
   else if (state == "dart" && count <= 2 && count>=0 && mousePressed == true && mouseX >= x3-50 && mouseX<=x3-50+100 && mouseY>=y3-50 && mouseY<=y3-50+100){
          tickets+=ticket3;
          count+=1;
          state = "ticket3";
          }
   else if (state == "dart" && count <= 2 && count>=0 && mousePressed == true && mouseX >= x4-50 && mouseX<=x4-50+100 && mouseY>=y4-50 && mouseY<=y4-50+100){
          tickets+=ticket4;
          count+=1;
          state = "ticket4";
          }
   else if (state == "dart" && count <= 2 && count>=0 && mousePressed == true && mouseX >= x5-50 && mouseX<=x5-50+100 && mouseY>=y5-50 && mouseY<=y5-50+100){
          tickets+=ticket5;
          count+=1;
          state = "ticket5";
          }
   else if (state == "dart" && count <= 2 && count>=0 && mousePressed == true && mouseX >= x6-50 && mouseX<=x6-50+100 && mouseY>=y6-50 && mouseY<=y6-50+100){
          tickets+=ticket6;
          count+=1;
          state = "ticket6";
          }
   else if (state == "dart" && mouseX>=40 && mouseX<=40+200 && mouseY>=530 && mouseY<=530+50){
    state = "setting";
  } 
  if (state == "cart" && mouseX>=40 && mouseX<=40+200 && mouseY>=530 && mouseY<=530+50){
    state="setting";
  }
  if (state == "setting" && tickets >= 10 && mouseX>=moveWheel && mouseX<=moveWheel+420+50 && mouseY>= 60 && mouseY<= 60+20+50+500+100){
    state="cartticket";
    tickets -=10;
  } 
  if (state == "cartticket" && mouseX>=40 && mouseX<=40+200 && mouseY>=530 && mouseY<=530+50){
    state="setting";
  }
  
  if (state == "setting" && count == 3 && mouseX >=moveTent2 && mouseX<=moveTent2+360 && mouseY >=180 && mouseY<=180+420){
      state="darterror";
   }
  else if (state =="darterror"){
    state="setting";
  }
   if (state =="ticket1" && mouseX>=40 && mouseX<=40+200 && mouseY>=530 && mouseY<=530+50){
    state = "setting";
  }
   if (state =="ticket2" && mouseX>=40 && mouseX<=40+200 && mouseY>=530 && mouseY<=530+50){
    state = "setting";
  }
  if (state =="ticket3" && mouseX>=40 && mouseX<=40+200 && mouseY>=530 && mouseY<=530+50){
    state = "setting";
  }
  if (state =="ticket4" && mouseX>=40 && mouseX<=40+200 && mouseY>=530 && mouseY<=530+50){
    state = "setting";
  }
  if (state =="ticket5" && mouseX>=40 && mouseX<=40+200 && mouseY>=530 && mouseY<=530+50){
    state = "setting";
  }
  if (state =="ticket6" && mouseX>=40 && mouseX<=40+200 && mouseY>=530 && mouseY<=530+50){
    state = "setting";
  }
  else if (state =="bottle"){
    shots -=1;
    if (pmouseY >= 500 && pmouseY<=550){
      moveBall = mouseY - 400;
      moveBallx = mouseX;
    }
    if(pmouseY >= 550 && pmouseY<=600){
      moveBall = mouseY - 320;
      moveBallx = mouseX+0;
    }
    if(pmouseY >= 600 && pmouseY<=650){
      moveBall = mouseY - 250;
      moveBallx = mouseX+0;
    }
    if (state == "bottle" && shots == 0){
      state= "end of bottle";
      tickets += bottle_tickets;
      shots = 5;
      colors = 0;
      colors2 = 0;
      colors3= 0;
      colors4 = 0;
      colors7 = 0;
      moveBall = 485;
      
    }
    if (state == "bottle" && mouseX>=40 && mouseX<=40+200 && mouseY>=530 && mouseY<=530+50){
      state ="setting";
      count = 6;
  }
  }
  else if (state == "end of bottle" && mouseX>=40 && mouseX<=40+200 && mouseY>=530 && mouseY<=530+50){
    state = "setting";
    shots = 6;
    bottle_tickets = 0;
    colors = 0;
    colors2 = 0;
    colors3= 0;
    colors4 = 0;
    colors7 = 0;
  }
  println(state);
}