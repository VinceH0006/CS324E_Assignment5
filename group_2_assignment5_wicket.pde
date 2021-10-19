Wicket wick1;
Wicket wick2;
Wicket wick3;

float x1 = 20;
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


void setup(){
  size(640, 360, P3D);
  lights();
  wick1 = new Wicket(size, position1, rotateX, rotateZ, rotateY, zMaxRot, zMinRot, color(255, 255, 255)); 
  wick2 = new Wicket(size, position2, rotateX, rotateZ, rotateY, zMaxRot, zMinRot, color(255, 255, 255));
  wick3 = new Wicket(size, position3, rotateX, rotateZ, rotateY, zMaxRot, zMinRot, color(255, 255, 255));
}

void draw(){
  background(97, 168, 224);
  wick1.display();
  wick1.move();
  wick2.display();
  wick2.move();
  wick3.display();
  wick3.move();
  
}
