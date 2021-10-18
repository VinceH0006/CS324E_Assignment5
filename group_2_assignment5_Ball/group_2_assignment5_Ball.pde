Ball b1; 

void setup(){
  size(640, 360, P3D); 
  background(97, 168, 224);
  lights();
  PVector s = new PVector(1.5, .35, .35);
  b1 = new Ball(25, 400, 400, 180, 180, 0, 0, s, 2.0, 1.5,color(196, 20, 23));
}

void draw(){
  background(97, 168, 224);
  b1.display(); 
  b1.move();
  
}
