PImage tent;
PImage wheel;
PImage prize;
PImage person;
PImage hammer;
PImage hammer1;
PImage bell;
PImage banner;
PImage background;
PImage prize_background;
String state = "pregame";
int moveTent = 100;
int moveTent1 = -300;
int moveTent2 = -700;
int moveWheel = 500;
int movePrize = 980;
int start = 450;
int tickets = 0;
String object = "";

int shots = 5;
int bottle_tickets = 0;
int colors = 0;
int colors2 = 0;
int colors3= 0;
int colors4 = 0;
int colors7 = 0;

int frame = 0;
int numFrames = 31;
PImage[] ferris = new PImage[numFrames];


void setup(){
  size(1200, 700);
  tent = loadImage("tent.png");
  wheel = loadImage("wheel.png");
  prize = loadImage("prize.png");
  person = loadImage("person.png");
  hammer = loadImage("hammer.png");
  hammer1 = loadImage("hammer copy.png");
  bell = loadImage("bell.png");
  background = loadImage("background.png");
  banner = loadImage("banner.png");
  prize_background = loadImage("prize background.png");
  
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
    background(#E0F3FF);
    textAlign(CENTER);
    textSize(50);
    fill(0);
    text("Type in your name", width/2, 100);
    fill(0);
    text(object, width/2, 300);    
    rect(450, 500, 300, 100);
    fill(255);
    text("Submit", 600, 570);
  }
  if (state == "welcome"){
    background(#E0F3FF);
    fill(0);
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
    background(150,210,157);
    image(background, 0, 0, width+400, 670);
    fill(0);
    textSize(40);
    text("Tickets: " + tickets, 150, 50);
    image(tent, moveTent, 200, 400, 500);
    image(tent, moveTent1, 200, 400, 500);
    image(tent, moveTent2, 200, 400, 500);
    frame = (frame+1)%numFrames; 
    image(ferris[frame], moveWheel, 150, 420, 500);
    image(prize, movePrize, 250, 310, 400);
    fill(255);
    triangle(50, 500, 100, 450, 100, 550);
    triangle(1150, 500, 1100, 450, 1100, 550);
    
    if (movePrize <= 100){
      moveTent -=0;
      moveTent1 -=0;
      moveTent2 -=0;
      moveWheel -=0;
      movePrize -=0;
  }
    else if(mouseX >= 1000){
      moveTent -=9;
      moveTent1 -=9;
      moveTent2 -=9;
      moveWheel -=9;
      movePrize -=9;
    }
    if (moveTent1 >=700){
      moveTent -=0;
      moveTent1 -=0;
      moveTent2 -=0;
      moveWheel -=0;
      movePrize -=0;
    }
    else if (mouseX <=200){
      moveTent +=9;
      moveTent1+=9;
      moveTent2+=9;
      moveWheel +=9;
      movePrize +=9;
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
  if (state == "prize"){
    image(prize_background, 0,0,1200,700);
    image(banner, 0,-150,500,400);
    image(banner, 500,-150,500,400);
    image(banner, 1000,-150,500,400);
    rect(100,500,100,100);
  }
  
  if (state == "dart"){
    background(255);
    for (int x = 200; x <300; x+=20){
      for(int y = 200; y < 300; y+=20){
        ellipse(x+150, y+150, 100, 100);      
      } }
  }
  if (state == "bottle"){
    background(255);
    textSize(50);
    fill(0);
    text(str(shots), 50,100);
    //top row
    fill(colors);
    rect(315+290, 70-20, 10, 20, 10, 10, 0,0);
    rect(305+290, 70,30,100,10,10,0,0);
    
    
    //second row
    fill(colors2);
    rect(410+120, 340-150, 30, 100, 10, 10, 0, 0);
    rect(540, 340-170, 10, 20, 10, 10, 0, 0);     
    fill(colors3);
    rect(575+80, 340-150, 30, 100, 10, 10, 0, 0);
    rect(575+90, 340-170, 10, 40, 10, 10, 0, 0);
    
    //third row
    fill(colors4);
    rect(390, 540-210, 30, 100, 10, 10, 0, 0);
    rect(400, 540-230, 10, 20, 10, 10, 0, 0);
    //fill(colors5);
    //rect(530, 540-210, 30, 100, 10, 10, 0, 0); 
    //rect(410+130, 540-230, 10, 20, 10, 10, 0, 0);
    //fill(colors6);
    //rect(650, 540-210, 30, 100, 10, 10, 0, 0);
    //rect(660, 540-230, 10, 20, 10, 10, 0, 0);
    fill(colors7);
    rect(790, 540-210, 30, 100, 10, 10, 0, 0);
    rect(800, 540-230, 10, 20, 10, 10, 0, 0);
    
    fill(255);
    rect(mouseX-25, 400, 50, 200);
    if (pmouseY>=400 && pmouseY<=600){
      fill(#F56A6A);
      rect(pmouseX-25, pmouseY, 50, 200);
    }
    
    if (shots>0 && mousePressed == true && mouseX>=315+290 && mouseX<=315+290+30 && pmouseY>=400 && pmouseY<=450 && colors!=255){
      //top row      
      colors = colors+255;  
      bottle_tickets += 5;
    }
    else if (shots>0 && mousePressed == true && mouseX>=410+120 && mouseX<=410+120+30 && pmouseY>450 && pmouseY<=500 && colors2!=255){
     //second row
      colors2= colors2+255;   
      bottle_tickets +=3;
    }
    else if (shots>0 && mousePressed == true && mouseX>=575+80 && mouseX<=575+80+30 && pmouseY>450 && pmouseY<=500 && colors3!=255){
      colors3+=255;  
      bottle_tickets +=3;
    }
    else if(shots>0 && mousePressed == true && mouseX>=390 && mouseX<=390+30 && pmouseY>500 && pmouseY<=550 && colors4!=255){
      colors4+=255;   
      bottle_tickets +=1;
    }
    
    else if (shots>0 && mousePressed == true && mouseX>=790 && mouseX<=790+30 && pmouseY>500 && pmouseY<=550 && colors7!=255){
      colors7+=255;   
      bottle_tickets+=1;
    }
  }
  if (state == "end of bottle"){
    background(255);
    text(bottle_tickets, width/2, height/2);
    rect(100,100,50,50);
    rect(200,100,50,50);
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
  else if (state == "highstriker" && mouseX >=100 && mouseX<=100+100 && mouseY >=100 && mouseY<=100+100){
    state = "setting";
    start = 450;
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
  else if (state == "hit" && mouseX >=100 && mouseX<=100+100 && mouseY >=100 && mouseY<=100+100){
    state = "setting";
    start = 450;
  }
  else if (state == "setting" && mouseX >=movePrize && mouseX<=movePrize+310 && mouseY >=250 && mouseY<=250+400){
    state = "prize";
  }
  else if (state == "prize" && mouseX >=100 && mouseX<=100+100 && mouseY >=500 && mouseY<=500+100){
    state = "setting";
  }
  else if (state == "setting" && mouseX >=moveTent1 && mouseX<=moveTent1+400 && mouseY >=200 && mouseY<=200+500){
    state = "bottle";
  }
  else if (state == "setting" && mouseX >=moveTent2 && mouseX<=moveTent2+400 && mouseY >=200 && mouseY<=200+500){
    state ="dart";
  }
  else if (state =="bottle"){
    shots -=1;
    if (state == "bottle" && shots == 0){
      state= "end of bottle";
      tickets += bottle_tickets;
      
  }
  }
  else if (state == "end of bottle" && mouseX>=100 && mouseX<=100+50 && mouseY>=100 && mouseY<=100+50){
    state = "bottle";
    shots = 5;
    bottle_tickets = 0;
    colors = 0;
    colors2 = 0;
    colors3= 0;
    colors4 = 0;
    colors7 = 0;
  }
  else if (state == "end of bottle" && mouseX>=200 && mouseX<=200+50 && mouseY>=100 && mouseY<=100+50){
    state = "setting";
  }  
}