//names image
PImage pizzaman;

//set up pizza array with global variable
Pizza [] pizza = new Pizza[5];


void setup(){
  //load pizzaman image
  pizzaman = loadImage("pizzaman.png");
  size(500, 500);
  
  //initialize pizza by calling the constructor with a for loop
  for (int i = 0; i<pizza.length; i++){
    pizza[i]= new Pizza(int(random(200, 400)), int(random(0, 500)), 80, 80);
  }
}

void draw(){
  background(#B2F4FF);
  //call methods on the pizza
  for(int i=0; i<pizza.length; i++){
    pizza[i].display();
    pizza[i].fall();
  }
  //display pizzaman image
  image(pizzaman, mouseX-310, 400, 700, 200);
}