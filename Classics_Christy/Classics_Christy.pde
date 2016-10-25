//We used Stephanie Cen's "Bubbles" and used her class Bubble
// We added 2 new methods and got rid of a few of the existing methods
//We added: Move and Pop
//New Title: Fishy Bubbles
//Lauren & Christy

//global variables
PImage fish;
Bubble b1;
ArrayList <Bubble> BubbleList;
int x, y, radius, mode, state;
int DEAD=1;
int MOVING=2;

void setup() { 
  fish = loadImage("fish.png");
  size(1000, 800);
  background(227, 254, 255);
  BubbleList= new ArrayList<Bubble>();
  for (int g=0; g < 50; g=g+1) { 
    BubbleList.add ( new Bubble() );
  }
}

void draw() {
    background(227, 254, 255);
    image(fish,mouseX-225,mouseY-50,250,100);
    for (int i=0; i < BubbleList.size (); i=i+1) {
      BubbleList.get(i).display();
      BubbleList.get(i).move();
      BubbleList.get(i).pop();
      //BubbleList.get(i).checkPop(BubbleList);
    }
}

//make new bubbles 
void mouseClicked() {
  b1=new Bubble(mouseX, mouseY);
  BubbleList.add(b1);
  b1.display();
  b1.move();
  b1.pop();
}