class Ball{
  float size;
  PVector speed;
  float rotatex;
  float rotatey;
  float x; 
  float orig_x;
  float y;
  float orig_y;
  float z;
  float orig_z;
  color c; 
  boolean bIsMovingRight;
  
  
  Ball(float size, float x, float orig_x, float y, float orig_y, float z, float orig_z, PVector speed, float rotatex, float rotatey, color c){
    this.size = size;
    this.x = x;
    this.orig_x = x;
    this.orig_y = y;
    this.orig_z = z;
    this.y = y;
    this.z = z;
    this.speed = speed;
    this.rotatex = rotatex;
    this.rotatey = rotatey;
    this.c = c;
  }
  
  void display(){
    fill(c);
    pushMatrix();
    translate(x, y, z); 
    rotateY(rotatey);
    rotateX(rotatex);
    sphere(size); 
    popMatrix();
  }
  
  void move(){
    if(x < width){
      bIsMovingRight = true; 
    }
    if(x < 100) {
      bIsMovingRight = false; 
    }
    if(bIsMovingRight){
      x -= speed.x;
      z -= speed.z;
      y -= speed.y;
    }else{
      x = orig_x; 
      z = orig_z; 
      y = orig_y;
    }
    
  }
}
