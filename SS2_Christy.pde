// DIY Pizza by Christy Chan
void setup(){ 
  size(800, 800);
  fill(0);
  textSize(20);
  text("MOUSE PRESS TO START", 0, 30);
  rectMode(CENTER);
  fill(85, 56, 2);
  rect(400, 400, 650, 650);
  fill(0);
  textSize(50);
  text("DIY PIZZA", 300, 400);
 
}

//mouse press to start pizza and restart pizza
void mousePressed(){
  background(random(1,255), random(1,255), random(1,255));
  String reset = "MOUSE PRESS TO RESET";
  String topping = "KEY PRESS FOR TOPPINGS";
  fill(0);
  textSize(20);
  text(reset, 0, 30);
  text(topping, 0, 60);
  //pizza bottom
  fill (240, 214, 111);
  strokeWeight(40);
  stroke(137, 89, 11);
  ellipse(400, 400, 700, 700);
  
  int position = 400;
  
  //slices
  strokeWeight(18);
  line(position, position, 162, 162);
  line(position, position, 640, 640);
  line(position, position, 680, 200);
  line(position, position, 90, 550);
  line(position, position, position, 60);
  line(position, position, position, 750);
}

//cheese
void draw(){
  fill(232, 227, 82);
  strokeWeight(1);
  rect (mouseX, mouseY, random(10,20), random(10,20));
}


//key pressed to add toppings
void keyPressed(){
  
  float locationX = random (180, 600);
  float locationY = random (180, 600);
  
  //pepperoni
  fill(255, 0, 0);
  stroke(0);
  strokeWeight(1);
  ellipse (random (180, 600), random (180, 600), 100, 100);
  
  //olives
  strokeWeight(20);
  stroke(0);
  fill (240, 214, 111);
  ellipse (locationX, locationY, 50, 50);
  
  //green pepper
  fill (83, 152, 95);
  strokeWeight(1);
  rect (random(180, 600), random(180, 600), 20, 50);
}
