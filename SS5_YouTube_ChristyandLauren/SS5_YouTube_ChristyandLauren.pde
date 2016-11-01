import processing.video.*;

PImage charliePhoto;
PImage girlsPhoto;
PImage chipmunkPhoto;
PImage youtubeLogo;
PImage subscribe;
PImage options;
String state="chipmunk";

//PImage thumbsUp;

String VideoTitle="Title of the video";
Movie movie;
Movie movie2;
Movie movie3;

//image[] ChannelPicture= new image[3];
void movieEvent(Movie movie){
 movie.read(); 
}
void movieEvent2(Movie movie2){
 movie2.read(); 
}

void movieEvent3(Movie movie3){
 movie3.read(); 
}

void setup(){
  size(800,600);
  movie= new Movie(this,"DramaticChipmunk.mp4");
  movie2= new Movie(this,"movie2.mp4");
  movie3= new Movie(this,"charlie.mp4");
  movie.play();
  movie2.pause();
  movie3.pause();
  youtubeLogo=loadImage("youtubelogo.png");
  subscribe=loadImage("subscribe.png");
  options=loadImage("options.png");
  //thumbsUp=loadImage("thumbsup");
  girlsPhoto= loadImage("girlsphoto.png");
  charliePhoto=loadImage("charliephoto.png");
  chipmunkPhoto=loadImage("chipmunkphoto.png");
}

void draw(){
if (state=="chipmunk"){ 
 background(255);
 //gray background
 fill(235);
 noStroke();
 rect(0,40,800,600);
 //youtube logo at the top
 image(youtubeLogo,20,5,100,30);
 //white box layout
 //video box
 fill(255);
 rect(25,50,600,425);
 image(movie,25,50,575,425);

   
 
 rectMode(CORNERS);
 //side video box
 rect(610,50,780,550);
 fill(255);
 //description box
  rect(25,435,600,550);
 //title for the video
 fill(0);
 textSize(25);
 textAlign(LEFT,TOP);
 text("Dramatic Chipmunk" ,35,435);
 //channel info + subscribe boxes
 rectMode(CORNER);
 rect(40,465,30,30);
 textSize(12);
 text("cregets",80,465);
 image(subscribe,80,480,65,15);
 rectMode(CORNER);
 fill(255);
 stroke(1);
 rect(145,480,65,14);
 rectMode(CORNERS);
 textSize(10);
 fill(0);
 text("5,846",150,482);
 stroke(235);
 line(40,510,580,510);
 stroke(0,144,209);
 line(580,510,470,510);
 textSize(15);
 text("45,799,380 Views",465,485);
 //image(thumbsUp,500,500,100,30);
 //searchbar
 rectMode(CORNER);
 fill(255);
 stroke(225);
 rect(130,5,500,30);
 fill(100);
 textSize(15);
 text("Search",140,13);
 rectMode(CORNERS);
 //options bar below subscribe
 image(options,30,515,200,30);
 //up next & formatting of other videos
  
  line(610,300,780,300);
  fill(255);
  rect(620,60,770,200);
  rect(620,310,770,450);
  image(charliePhoto,620,60,150,140);
  image(girlsPhoto,620,310,150,140);
  if (mouseX>620 && mouseX<770 && mouseY>60 && mouseY<200){
  stroke(0);
  noFill();
  rect(620,60,770,200); 
  
  }
  if (mouseX>620 && mouseX<770 && mouseY>310 && mouseY<450){
    stroke(0);
  noFill();
    rect(620,310,770,450);
  }
  fill(0);
  textSize(15);
  text("Charlie bit my finger!",620,205);
  textSize(12);
  text("HDCYT",620,222);
  textSize(10);
  text("834,968,140 views",620,235);
  //bottom video
  textSize(15);
  text("Heathens Mannequin",620,455);
  textSize(12);
  text("TINADDIE",620,472);
  textSize(10);
  text("785,248 views",620,485); 
}
if (state=="charlie"){
   background(255);
 //gray background
 fill(235);
 noStroke();
 rect(0,40,800,600);
 //youtube logo at the top
 image(youtubeLogo,20,5,100,30);
 //white box layout
 //video box
 fill(255);
 rect(25,50,600,425);
 image(movie3,25,50,575,425);
 
  
 rectMode(CORNERS);
 //side video box
 rect(610,50,780,550);
 fill(255);
 //description box
  rect(25,435,600,550);
 //title for the video
 fill(0);
 textSize(25);
 textAlign(LEFT,TOP);
 text("Charlie bit me!" ,35,435);
 //channel info + subscribe boxes
 rectMode(CORNER);
 rect(40,465,30,30);
 textSize(12);
 text("HDCYT",80,465);
 image(subscribe,80,480,65,15);
 rectMode(CORNER);
 fill(255);
 stroke(1);
 rect(145,480,65,14);
 rectMode(CORNERS);
 textSize(10);
 fill(0);
 text("337,466",150,482);
 stroke(235);
 line(40,510,580,510);
 stroke(0,144,209);
 line(580,510,470,510);
 textSize(15);
 text("843,968,140 Views",445,485);
 //image(thumbsUp,500,500,100,30);
 //searchbar
 rectMode(CORNER);
 fill(255);
 stroke(225);
 rect(130,5,500,30);
 fill(100);
 textSize(15);
 text("Search",140,13);
 rectMode(CORNERS);
 //options bar below subscribe
 image(options,30,515,200,30);
 //up next & formatting of other videos
  
  line(610,300,780,300);
  fill(255);
  rect(620,60,770,200);
  rect(620,310,770,450);
  image(chipmunkPhoto,620,60,150,140);
  image(girlsPhoto,620,310,150,140);
  if (mouseX>620 && mouseX<770 && mouseY>60 && mouseY<200){
  stroke(0);
  noFill();
  rect(620,60,770,200); 
  }
  if (mouseX>620 && mouseX<770 && mouseY>310 && mouseY<450){
    stroke(0);
  noFill();
    rect(620,310,770,450);
  }
  fill(0);
  textSize(15);
  text("Dramatic Chipmunk",620,205);
  textSize(12);
  text("cregrets",620,222);
  textSize(10);
  text("45,979,380 views",620,235);
  //bottom video
  textSize(15);
  text("Heathens Mannequin",620,455);
  textSize(12);
  text("TINADDIE",620,472);
  textSize(10);
  text("785,248 views",620,485); 
  
}
if (state=="girls"){
   background(255);
 //gray background
 fill(235);
 noStroke();
 rect(0,40,800,600);
 //youtube logo at the top
 image(youtubeLogo,20,5,100,30);
 //white box layout
 //video box
 fill(255);
 rect(25,50,600,425);
 image(movie2,25,50,575,425);
 
 rectMode(CORNERS);
 //side video box
 rect(610,50,780,550);
 fill(255);
 //description box
  rect(25,435,600,550);
 //title for the video
 fill(0);
 textSize(25);
 textAlign(LEFT,TOP);
 text("Mannequin Head Dance to Heathens" ,35,435);
 //channel info + subscribe boxes
 rectMode(CORNER);
 rect(40,465,30,30);
 textSize(12);
 text("TINADDIE",80,465);
 image(subscribe,80,480,65,15);
 rectMode(CORNER);
 fill(255);
 stroke(1);
 rect(145,480,65,14);
 rectMode(CORNERS);
 textSize(10);
 fill(0);
 text("43,018",150,482);
 stroke(235);
 line(40,510,580,510);
 stroke(0,144,209);
 line(580,510,470,510);
 textSize(15);
 text("785,514 Views",465,485);
 //image(thumbsUp,500,500,100,30);
 //searchbar
 rectMode(CORNER);
 fill(255);
 stroke(225);
 rect(130,5,500,30);
 fill(100);
 textSize(15);
 text("Search",140,13);
 rectMode(CORNERS);
 //options bar below subscribe
 image(options,30,515,200,30);
 //up next & formatting of other videos
  
  line(610,300,780,300);
  fill(255);
  rect(620,60,770,200);
  rect(620,310,770,450);
  image(chipmunkPhoto,620,60,150,140);
  image(charliePhoto,620,310,150,140);
 
  if (mouseX>620 && mouseX<770 && mouseY>60 && mouseY<200){
  stroke(0);
  noFill();
  rect(620,60,770,200); 
  }
  if (mouseX>620 && mouseX<770 && mouseY>310 && mouseY<450){
    stroke(0);
  noFill();
    rect(620,310,770,450);
  }
  fill(0);
  textSize(15);
  text("Dramatic Chipmunk",620,205);
  textSize(12);
  text("cregets",620,222);
  textSize(10);
  text("5,846 views",620,235);
  //bottom video
  textSize(15);
  text("Charlie bit my finger",620,455);
  textSize(12);
  text("HDCYT",620,472);
  textSize(10);
  text("834,968,140 views",620,485); 
  
}
}

void mousePressed(){
   if (state=="chipmunk" && mouseX>620 && mouseX<770 && mouseY>60 && mouseY<200){
     state="charlie";
     movie.pause();
     movie2.pause();
     movie3.play();
     image(movie3,25,50,575,425);
     movie3.jump(0.0);
     
     
   }
  else if (state=="chipmunk" && mouseX>620 && mouseX<770 && mouseY>310 && mouseY<450){
    state="girls";
    movie2.play();
    movie3.pause();
    movie.pause();
    image(movie2,25,50,575,425);
    movie2.jump(0.0);
  }
  else if (state=="charlie" && mouseX>620 && mouseX<770 && mouseY>60 && mouseY<200){
     state="chipmunk";
     movie.play();
     movie2.pause();
     movie3.pause();
     image(movie,25,50,575,425);
     movie.jump(0.0);
  }
  else if (state=="charlie" && mouseX>620 && mouseX<770 && mouseY>310 && mouseY<450){
     state="girls";
     movie2.play();
    movie3.pause();
    movie.pause();
    image(movie2,25,50,575,425);
    movie2.jump(0.0);
  }
  else if (state=="girls" && mouseX>620 && mouseX<770 && mouseY>60 && mouseY<200){
     state="chipmunk";
     movie.play();
     movie2.pause();
     movie3.pause();
     image(movie,25,50,575,425);
     movie.jump(0.0);
  }
  else if (state=="girls" && mouseX>620 && mouseX<770 && mouseY>310 && mouseY<450){
     state="charlie";
     movie.pause();
     movie2.pause();
     movie3.play();
     image(movie3,25,50,575,425);
     movie3.jump(0.0);
     
  }
  }