//Sleep vs. TV by Christy Chan

String state = "pregame";

void setup(){
  size(1000, 750);
}

void draw(){
  textAlign(CENTER);
  textSize(20);
  
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
    fill(255);
    text("click to start the game", width/2, height/2);

  }
  else if (state=="intro"){
    fill(0);
    rect(10,10, 780, 750);
    fill(75, 50, 12);
    rect(0, 0, 50, 750);
    rect(0, 0, 900, 50);
    rect(0, 700, 1000, 60);
    rect(730, 0, 270, 750); 
    text("We have to help sophia fall asleep", 300, 300);
    text("Choose the best movie/show to help her do so", 300, 350);
    text("Click to start game", 300, 400);
  }
  else if (state=="scaryvsaction"){
    background (237, 242, 203);
    //brown
    fill(75, 50, 12);
    rect(60, 70, 600, 400);
    //screen
    fill(0);
    rect(100, 110, 520, 320);
    fill(255);
    text("1. scary movie", 200, 200);
    text("2. action movie", width/2, 200);
    fill(random(1,255), random(1,255), random(1,255));
    rect(300, 600, 100, 100);
    fill(245, 175, 89);
    ellipse(350, 560, 100, 100);
    
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
  }

  else if (state=="sequelorcomedy"){
    background (237, 242, 203);
    //brown
    fill(75, 50, 12);
    rect(60, 70, 600, 400);
    //screen
    fill(0);
    rect(100, 110, 520, 320);
    fill(0);
    text("Sophia is even more awake", 530, 600);
    fill(255);
    text("3. sequel to scary movie", 200, 200);
    text("4. comedy movie", width/2, 200);
    fill(random(1,255), random(1,255), random(1,255));
    rect(300, 600, 100, 100);
    fill(245, 175, 89);
    ellipse(350, 560, 100, 100);
    
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
  }
  
  else if (state=="cartoonorreality"){
    background (237, 242, 203);
    //brown
    fill(75, 50, 12);
    rect(60, 70, 600, 400);
    //screen
    fill(0);
    rect(100, 110, 520, 320);
    fill(0);
    text("Sophia is getting a little sleepy", 530, 600);
    fill(255);
    text("3. cartoon movie", 200, 200);
    text("4. reality movie", width/2, 200);
    fill(random(1,255), random(1,255), random(1,255));
    rect(300, 600, 100, 100);
    fill(245, 175, 89);
    ellipse(350, 560, 100, 100);
    
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
  }  
  
  else if (state=="sci-fiorromance"){
    background (237, 242, 203);
    //brown
    fill(75, 50, 12);
    rect(60, 70, 600, 400);
    //screen
    fill(0);
    rect(100, 110, 520, 320);
    fill(255);
    text("Last one...", 530, 600);
    text("5. sci-fi movie", 200, 200);
    text("6. romance movie", width/2, 200);
    fill(random(1,255), random(1,255), random(1,255));
    rect(300, 600, 100, 100);
    fill(245, 175, 89);
    ellipse(350, 560, 100, 100);
    
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
}
  
  else if (state=="historyormystery"){
    background (237, 242, 203);
    //brown
    fill(75, 50, 12);
    rect(60, 70, 600, 400);
    //screen
    fill(0);
    rect(100, 110, 520, 320);
    fill(0);
    text("Last one...", 530, 600);
    fill(255);
    text("5. mystery movie", 200, 200);
    text("6. history movie", width/2, 200);
    fill(random(1,255), random(1,255), random(1,255));
    rect(300, 600, 100, 100);
    fill(245, 175, 89);
    ellipse(350, 560, 100, 100);
   
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
  } 
  
  else if (state=="nosleep"){
    background (237, 242, 203);
    fill(0);
    text("Sophia can't sleep", width/2, 300);
    ellipse(350, 560, 100, 100);

  } 
  
  else if (state=="sleep"){
    background (237, 242, 203);
    fill(0);
    text("Sophia fell asleep", width/2, 300);
    text("Good Job", width/2, 400);
    rect(100, 600, 500, 100);


  }  

  println(state);

}

void mousePressed(){
   if (state =="pregame"){
    state = "intro";
  }
  else if (state =="intro"){
    state = "scaryvsaction";
  }
}

void keyPressed(){
  //scary
  if (state == "scaryvsaction"  && (key == '1')){
    state = "sequelorcomedy";
  }
  //action
  if (state == "scaryvsaction"  && (key == '2')){
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
  if (state == "sci-fiorromance"  && (key == '5') || state == "historyormystery" && (key == '6')){
    state = "nosleep";
  }  
  //sleep
  if (state == "sci-fiorromance"  && (key == '6') || state == "historyormystery" && (key == '5')){
    state = "sleep";
  }  
}