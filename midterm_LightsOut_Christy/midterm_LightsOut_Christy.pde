//Lights Out by Christy Chan

PImage scarymovie;
PImage actionmovie;
PImage sequelmovie;
PImage comedymovie;
PImage cartoonmovie;
PImage realitymovie;
PImage scifimovie;
PImage romancemovie;
PImage mysterymovie;
PImage historymovie;
PImage couch;
PImage hair;
PImage sleep;
PImage frame;
PImage madmom;

String state = "pregame";

void setup(){
  size(1000, 750);
  scarymovie = loadImage("scarymovie.jpg");
  actionmovie = loadImage("actionmovie.jpg");
  sequelmovie = loadImage("sequelmovie.jpg");
  comedymovie = loadImage("comedymovie.jpeg");
  cartoonmovie = loadImage("cartoonmovie.png");
  realitymovie = loadImage("realitymovie.jpg");
  scifimovie = loadImage("scifimovie.jpg");
  romancemovie = loadImage("romancemovie.jpg");
  mysterymovie = loadImage("mysterymovie.jpg");
  historymovie = loadImage("historymovie.jpg");
  couch = loadImage("couch.png");
  hair = loadImage("hair.png");
  sleep = loadImage("sleep.png");
  frame = loadImage("frame.png");
  madmom = loadImage("madmom.png");
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
    text("We have to help Sophia fall asleep", 380, 300);
    text("Choose the best movie or show to help her do so", 386, 350);
    text("Click to continue", 380, 400);
  }
  else if (state=="scaryoraction"){
    background (237, 242, 203);
    tv();
    remote();
    fill(0);
    textAlign(CENTER);
    textSize(16);
    text("1. scary movie", 850, 250);
    image(scarymovie, 100, 110, 260, 320);
    text("2. action movie", 850, 280);
    image(actionmovie, 360, 110, 260, 320);
    person();
    image(couch, 70, 600, 550, 200);    

  }

  else if (state=="sequelorcomedy"){
    background (237, 242, 203);
    tv();
    remote();
    fill(0);
    textAlign(CENTER);
    textSize(16);
    text("Sophia is even more awake", 530, 600);
    textSize(12);
    text("3. sequel to scary movie", 850, 250);
    textSize(16);
    image(sequelmovie, 100, 110, 260, 320);
    text("4. comedy movie", 850, 280);
    image(comedymovie, 360, 110, 260, 320);    
    person();
    image(couch, 70, 600, 550, 200);

  }
  
  else if (state=="cartoonorreality"){
    background (237, 242, 203);
    tv();
    remote();   
    textAlign(CENTER);
    textSize(16);
    fill(0);
    text("Sophia is getting a little sleepy", 530, 600);
    text("3. cartoon movie", 850, 250);
    image(cartoonmovie, 100, 110, 260, 320);
    text("4. reality movie", 850, 280);
    image(realitymovie, 360, 110, 260, 320);    
    person();
    image(couch, 70, 600, 550, 200);
  }  
  
  else if (state=="sci-fiorromance"){
    background (237, 242, 203);
    tv();
    remote();
    fill(255);
    textAlign(CENTER);
    textSize(16);
    text("Last one...", 530, 600);
    fill(0);
    text("5. sci-fi movie", 850, 250);
    image(scifimovie, 100, 110, 260, 320);    
    text("6. romance movie", 850, 280);
    image(romancemovie, 360, 110, 260, 320);        
    person();
    image(couch, 70, 600, 550, 200);
}
  
  else if (state=="historyormystery"){
    background (237, 242, 203);
    tv();
    remote();
    fill(0);
    textAlign(CENTER);
    textSize(16);
    text("Last one...", 530, 600);
    text("5. mystery movie", 850, 250);
    image(mysterymovie, 100, 110, 260, 320);
    text("6. history movie", 850, 280);
    image(historymovie, 360, 110, 260, 320);    
    person();
    image(couch, 70, 600, 550, 200);
    
  } 
  
  else if (state=="nosleep"){
    background (250, 197, 203);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("Sophia did not go to sleep", width/2, 150);
    text("Her mom grounded her", width/2, 200);
    image(madmom, 370, 260, 250, 400);
    text("Press the spacebar to restart the game", 630, 700);
  } 
  
  else if (state=="sleep"){
    background (197, 240, 250);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    image(frame, 200, 100, 600, 250);
    text("Sophia fell asleep!", width/2, 210);
    text("Good Job!", width/2, 260);
    image(sleep, 100, 400);
    text("Press the spacebar to restart the game", 630, 700);
  }
  println(state);
}

void person(){
    fill(random(1,255), random(1,255), random(1,255));
    rect(300, 570, 100, 100);
    fill(245, 175, 89);
    ellipse(350, 530, 100, 100);
    image(hair, 275, 446, 200, 300);

}

void tv(){
    //brown
    fill(75, 50, 12);
    rect(60, 70, 600, 400);
    //screen
    fill(0);
    rect(100, 110, 520, 320);  
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
    textAlign(CENTER);
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
  else if (state =="intro"){
    state = "scaryoraction";
  }
  //scary
  else if (state == "scaryoraction" && mouseX>780 && mouseX<780+30 && mouseY>380 && mouseY<380+30){
    rect(780, 380, 30, 30); //1
    state = "sequelorcomedy";
  }
  //action
  else if (state == "scaryoraction" && mouseX>835 && mouseX<835+30 && mouseY>380 && mouseY<380+30){
    rect(835, 380, 30, 30); //2
    state = "cartoonorreality";
  }
  //sequel
  else if (state=="sequelorcomedy" && mouseX>890 && mouseX<890+30 && mouseY>380 && mouseY<380+30){
    rect(890, 380, 30, 30); //3 
    state = "historyormystery";
  }
  //reality
  else if (state=="cartoonorreality" && mouseX>780 && mouseX<780+30 && mouseY>440 && mouseY<440+30){
    rect(780, 440, 30, 30); //4
    state = "historyormystery";
  }
  //comedy
  else if (state=="sequelorcomedy" && mouseX>780 && mouseX<780+30 && mouseY>440 && mouseY<440+30){
    rect(780, 440, 30, 30); //4
    state = "sci-fiorromance";
  }
  //cartoon
  else if (state=="cartoonorreality" && mouseX>890 && mouseX<890+30 && mouseY>380 && mouseY<380+30){
    rect(890, 380, 30, 30); //3
    state = "sci-fiorromance";
  }
  //scifi
  else if (state=="sci-fiorromance" && mouseX>835 && mouseX<835+30 && mouseY>440 && mouseY<440+30){
    rect(835, 440, 30, 30); //5
    state = "nosleep";
  } 
  //romance
  else if (state=="sci-fiorromance" && mouseX>890 && mouseX<890+30 && mouseY>440 && mouseY<440+30){
    rect(890, 440, 30, 30); //6
    state = "sleep";
  }
  //history
  else if (state=="historyormystery" && mouseX>835 && mouseX<835+30 && mouseY>440 && mouseY<440+30){
    rect(835, 440, 30, 30); //5
    state = "nosleep";
  }
  //mystery
  else if (state=="historyormystery" && mouseX>890 && mouseX<890+30 && mouseY>440 && mouseY<440+30){
    rect(890, 440, 30, 30); //6
    state = "sleep";
  }  
}

void keyPressed(){
  //scary
  if (state == "scaryoraction"  && (key == '1')){
    state = "sequelorcomedy";
  }
  //action
  if (state == "scaryoraction"  && (key == '2')){
    state = "cartoonorreality";
  }
  //sequel and reality
  if (state == "sequelorcomedy"  && (key == '3') || state == "cartoonorreality" && (key == '4')){
    state = "historyormystery";
  }
  //comedy and cartoon
  if (state == "sequelorcomedy"  && (key == '4') || state == "cartoonorreality" && (key == '3')){
    state = "sci-fiorromance";
  }
  //no sleep
  if (state == "sci-fiorromance"  && (key == '5') || state == "historyormystery" && (key == '5')){
    state = "nosleep";
  }  
  //sleep
  if (state == "sci-fiorromance"  && (key == '6') || state == "historyormystery" && (key == '6')){
    state = "sleep";
  }  
  if (state == "sleep" && (key == ' ') || state == "nosleep" && (key == ' '))
    state = "pregame";
}