// global variables (can be used everywhere below)
Cactus c1;      //makes a place in memory to keep cactus object
Dinosaur d1;    //makes a place in memory to keep dino object
float gravity;  // gravity
float distance; // track distance between dino and a cactus

PImage img;
 

// this function runs once only
void setup() {
  
img = loadImage("nkb.jpeg");
 
  // draw the canvas
  size(800, 200);
  
  c1 = new Cactus (900, -0.1, -1);  // create cactus object
  d1 = new Dinosaur (0, 170, 0);    // craete dino object
  
  // set gravity
  gravity = 0.075;
}

// this function runs repeatedly
void draw() {

  
  image(img, 0, 0, 800, 200);
  
  c1.update(gravity); // re-draw cactus in new position
  d1.update(gravity); // re-draw dino in new position
  
  // check whether the cactus is touching the dino
  if (d1.isTouching(c1)) {
    textSize(80);
    text("HIT", 400, 100);
    noLoop();  // stop the game
  }
  
}

// respond to keypress 
void keyPressed() {
  if (d1.getY() == 170) {
    d1.setA(-1.2);
  }
}