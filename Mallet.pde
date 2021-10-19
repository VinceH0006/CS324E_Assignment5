class Mallet{
  // initialize one float to define size, it's all ratios
  float size;
  
  // initial X, Y, and Z positions
  float X;
  float Y;
  float Z;
  
  // define original locations to remember for later
  float origX = X;
  float origY = Y;
  float origZ = Z;
  
  // vector defining speed of animation
  PVector speed;
  
  // rotation of the mallet in space, just makes it look more realistic
  float rotateX;
  float rotateY;
  
  // color and defining when to run the animation
  color c;
  boolean malletMoving;
  
  // define the class variables
  Mallet(float size, float X, float Y, float Z, PVector speed, float rotateX, float rotateY, color c){
    this.size = size;
    this.X = X;
    this.Y = Y;
    this.Z = Z;
    this.speed = speed;
    this.rotateX = rotateX;
    this.rotateY = rotateY;
    this.c = c;
    
    origX = X;
    origY = Y;
    origZ = Z;
  }
  
  void display() {
    // create the mallet head
    fill(c);
    pushMatrix();
    translate(X, Y, Z);
    rotateX(.75);
    box(size*2, size, size);
    popMatrix();
    
    // create the mallet stick/handle
    pushMatrix();
    translate(X-20, Y-80, Z-10);
    rotateX(.5);
    box(size/10, size*5, size/10);
    popMatrix();  
  }
 
  void move() {
    // define where the animation stops following hitting the ball
    if (X < width) {malletMoving = true;}
    if (X < 564) {malletMoving = false;}
    
    // increment the motion of the ball according to the vector given
    if (malletMoving) {
      X -= speed.x;
      Y -= speed.y;
      Z -= speed.z;
    }
    // once the animation is complete reset its position
    else{
      X = origX;
      Y = origY;
      Z = origZ;
    }  
  }
}
