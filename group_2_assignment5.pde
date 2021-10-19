// initialize our objects
Ball b1;

Wicket wick1;
Wicket wick2;
Wicket wick3;

Mallet M1;

// these global variables belong to the flag class (Wicket)
float x1 = 40;
float y1 = 50;
float z1 = 20;
PVector size = new PVector(x1, y1, z1);
PVector position1 = new PVector(20, y1, z1);

float x2 = - 20;
float y2 = 250;
float z2 = 100;
PVector position2 = new PVector(x2, y2, z2);

float x3 = - 60;
float y3 = 250;
float z3 = 100;
PVector position3 = new PVector(x3, y3, z3);


// Default rotations
float rotateX = -0.1*PI;
float rotateZ = 0;
float rotateY = -0.1*PI;

// Thresholds
float zMaxRot = PI/6;
float zMinRot = -PI/6;

void setup() {
  
  // define our scene and specify that we're operating in 3D
  size(640, 360, P3D);
  lights();
  
  // initialize ball object and its associated vector
  PVector s = new PVector(1.5, .25, .35);
  b1 = new Ball(25, 520, 520, 320, 320, 0, 0, s, 2.0, 1.5,color(196, 20, 23));
  
  // initalize the three flag objects
  wick1 = new Wicket(size, position1, rotateX, rotateZ, rotateY, zMaxRot, zMinRot, color(255, 255, 255)); 
  wick2 = new Wicket(size, position2, rotateX, rotateZ, rotateY, zMaxRot, zMinRot, color(255, 255, 255));
  wick3 = new Wicket(size, position3, rotateX, rotateZ, rotateY, zMaxRot, zMinRot, color(255, 255, 255));
  
  // initialize the mallet object and its vector
  PVector M1s = new PVector(3.0, 0, 0.35);
  M1 = new Mallet(25, 600, 320, 0, M1s, 2.0, 1.5, color(173, 222, 71));
}

void draw() {
  
  // set the background of our scene to make it somewhat logical
  background(97, 168, 224);
  fill(85);
  rect(140, 55, 5, 155);
  ellipse(140, 235, 50, 50);
  
  // place and move our ball
  b1.display(); 
  b1.move();
  
  // display the flag along with it's oscillating animation
  wick1.display();
  wick1.move();
  wick2.display();
  wick2.move();
  wick3.display();
  wick3.move();
  
  // display our mallet
  M1.display();
  // one important caveat is that the mallet shouldn't always be in motion, only to impact
  // the ball, so this defines when the animation will occur based on
  // when the ball resets the mallet animation resets along with it.
  if (b1.x > 500){
    M1.move();
  }
}
