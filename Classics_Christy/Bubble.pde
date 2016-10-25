class Bubble {
  //global variables
  float x, y, dx, dy, radius, mradius, start1, start2; 
  int state;

  //setup & initialized variables
  //constructor
  Bubble() {
    x=mouseX;
    y=mouseY;
    dx=random(-3, 3);
    dy=random(-3, 3);
    radius=10;
    stroke(174, 244, 250, 75);
    fill(174, 244, 250, 75);
    
  }
  Bubble(float start1, float start2) {
    x= start1;
    y= start2;
    dy= random(-2, -1);
    radius=10;
    stroke(174, 244, 250, 75);
    fill(174, 244, 250, 75);
  }

  //methods
  void display() { //draw bubble
    stroke(174, 244, 250);
    fill(174, 244, 250, 75);
    ellipse(x,y,radius,radius);
  }
  
  void pop(){
    radius+=0.25;
  }

  void move() { //make bubble move up 
    y=y-1;
  }

} //end class