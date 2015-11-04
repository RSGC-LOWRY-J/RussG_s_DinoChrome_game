class Cactus {
  //global variables for cactus
  float x1;  //tracks horizontal position of the first cactus
  float y1;  //tracks horizontal position of the first cactus
  float a1;  //tracks acceleration for the first cactus
  float s1;  //tracks the speed of the first cactus
  float r1;  //tracks the radius of the cactus

  //constructor (like setup runs once)
  Cactus(float x_, float a_, float s_) {
    x1 = x_;
    y1 = 175;
    a1 = a_;
    s1 = s_;
    r1 = 25;
  }

  //update: draws things related to cactus
  void update(float g) {

    //draw a cactus at the bottom right corner of the screen
    fill(0, 0, 255);
    ellipse(x1, y1, r1*2, r1*2);

    //change the horizontal speed (speed is changed by acceleration)
    s1 = s1 + a1;

    //create the appearance of moving by changing the x position
    x1 = x1 + s1;

    // reset the position
    if (x1 < -50) {
      x1 = 900; //place off screen on right 
      s1 = -10; //reset the speed
    }
  }
  
  // getX
  //
  // Purpose: an accessor method; lets us find out where the cactus is (horizontally)
  float getX() {
    return x1;
  }
  
  // getY
  //
  // Purpose: an accessor method; lets us find out where the cactus is (vertically)
  float getY() {
    return y1;
  }

  // getR
  //
  // Purpose: an accessor method; lets us find out the cactus radius
  float getR() {
    return r1;
  }
  
}