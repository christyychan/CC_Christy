//High Striker by Christy Chan
//Recreating a popular carnival game, high striker
//Move the hammer up and down, mouse press when you think it is high enough to ring the bell

//setting up global variable
var state = "pregame"
var start = 450

//loading images
function preload(){
  hammer = loadImage("hammer.png")
  hammer1 = loadImage("hammer copy.png")
  bell = loadImage("bell.png")
  carnival = loadImage("carnival.jpg")
}

//setting up canvas size
function setup() {
  createCanvas(600,600);
}

//creating the high striker, so I can call it back in the different states
function striker(){
  image(carnival, 0,0,width, height)
  fill(244, 238, 66);
  rect(250, 50, 100, 450);
  fill(255, 0, 0);
  rect(250, 450, 100, 130);
  fill(0);
  ellipse(300, 530, 100, 50);
  rect(250, 500, 100, 30);
  fill(173, 171, 171);
  ellipse(300, 500, 100, 50);
  fill(0)
  ellipse(300, start, 20, 20)
  textSize(20)
  text("400", 200, 110)
  text("300", 200, 210)
  text("200", 200, 310)
  text("100", 200, 410)
  image(bell, 175, -70, 250, 250)
}

//setting up the different states
function draw() {
  if (state == "pregame")
    background(255);
    striker();
    image(hammer,130, mouseY-100, 200, 200);
  
  //different things that can happen at different mouseY locations 
  if (state == "hit"){
    background(255);
    striker();
    image(hammer1, 80, 350, 300, 300)
    if(start <=100){
      fill(random(0,255), random(0,255), random(0,255))
      textSize(60)
      text("WINNER", 180, width/2)

    }
    if(start >100 && start<=200){
      fill(random(0,255), 0, 0)
      textSize(50)
      text("Somewhat Strong", 100, height/2)


    }
    if(start >200 && start<=300){
      fill(0, random(0,255), 0)
      textSize(50)
      text("Mediocre", 200, height/2)


    }
    if(start >300 && start<=400){
      fill(0,0,random(0,255))
      textSize(50)
      text("Okay", 250, height/2)

    }
    if(start >400){
      fill(random(0,255))
      textSize(50)
      text("Weak", 230, height/2)


    }
  }
}

//setting the ball to equal where mouseY was at
function mousePressed(){
  if (state == "pregame"){
    state = "hit";
    if (mouseY<=100){
      start = mouseY
    }
    else if(mouseY>100 && mouseY<=200){
      start = mouseY
    }
    else if (mouseY>200 && mouseY<=300){
      start = mouseY
    }
    else{
      start = mouseY
    }

  }
}