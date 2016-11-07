//Limited MP3 by Christy Chan
//You can only fast forward to the other songs
//Press forward button

var state = 'first';
var button;

//preload all the songs and pictures
function preload() {
  song1 = loadSound('setting fire.mp3');
  song2 = loadSound('juju.mp3')
  song3 = loadSound('body gold.mp3');
  pic1 = loadImage('settingfire.jpg');
  pic2 = loadImage('juju.jpeg');
  pic3 = loadImage('bodygold.jpg');
}

//set song to volume 1
//create forward button
function setup() {
  createCanvas(500, 500);
  background(201, 252, 249);
  song1.setVolume(1);
  song2.setVolume(1);
  song3.setVolume(1);
  song1.play();
  song2.pause();
  song3.pause();
  button = createButton('>>');
  button.position(285, 330);
  button.mousePressed(changeSong);
}

//switches the album cover
function draw() {
  if (state == 'first'){
    ipod();
    image(pic1, 175, 75, 150, 150);
    
  }
  if (state == 'second'){
    ipod();
    image(pic2, 175, 75, 150, 150);

  }
  if (state == 'third'){
    ipod();
    image(pic3, 175, 75, 150, 150);
  }
}

//makes ipod
function ipod(){
  fill(183, 181, 181);
  rect(125, 50, 250, 400, 7);
  fill(255);
  rect(135, 60, 230, 180, 7);
  ellipse(250, 340, 150, 150);
  fill(255);
  ellipse(250, 340, 50, 50);  
}

//switches state and songs
function changeSong() {
  if (state == 'first'){
    song1.jump(0, 240);
    song1.pause();
    song3.pause();
    state = 'second';
    song2.play();

  }
  else if(state == 'second'){
    song2.jump(0, 120);
    song2.pause();
    song1.pause();
    state = 'third';
    song3.play();

    
  }
  else if(state == 'third'){
    song3.jump(0, 200);
    song3.pause();
    song2.pause();
    state = 'first';
    song1.play();
  }
}