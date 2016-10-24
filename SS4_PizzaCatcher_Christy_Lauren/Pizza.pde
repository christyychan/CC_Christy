class Pizza{
  //instance variables
  int x;
  int y;
  int diameter;
  int diameter1;

  //constructor
  //constructor arguments are temp- used to initialize variables in object
  Pizza(int tempX, int tempY, int tempDiameter, int tempDiameter1){
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
    diameter1 = tempDiameter1;
  }
//method: display pizza  
  void display(){
    //pizza base
    fill(240, 214, 111);
    strokeWeight(10);
    stroke(137, 89, 11);
    ellipse(x, y, diameter, diameter1);
    //pepperoni
    noStroke();
    fill(255,0,0);
    ellipse(x+10, y+10, 10, 10); 
    ellipse(x-10, y-10, 10, 10);
    ellipse(x, y-20, 10, 10);
    ellipse(x, y+25, 10, 10);
    //olives
    fill (0);
    ellipse (x+1, y, 7, 7);
    ellipse (x+10, y-10, 7, 7);
    fill (83, 152, 95);
    rect (x-20, y+10, 5, 10);
    rect (x+20, y-25, 5, 10);
  }
  
//method: pizza falling  
  void fall(){
    if (y>height+100){
      y =-100;
    } else{
      y++;
    }
  }
}