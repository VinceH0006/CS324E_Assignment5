class Wicket{
 
  PVector size = new PVector(0, 0, 0);
  PVector position = new PVector(0, 0, 0);
  float rotateX;
  float rotateZ;
  float rotateY;
  float zMaxRot;
  float zMinRot;
  color colorC;
  boolean moveRight;
  
  Wicket(PVector size, PVector position, float rotateX, float rotateZ, float rotateY, float zMaxRot, float zMinRot, color colorC){
    this.size.x = size.x;
    this.size.y = size.y;
    this.size.z = size.z;
    this.position.x = position.x;
    this.rotateX = rotateX;
    this.rotateZ = rotateZ;
    this.rotateY = rotateY;
    this.zMaxRot = zMaxRot;
    this.zMinRot = zMinRot;
    this.colorC = colorC;
  }
  
  void move(){
    if (rotateZ > zMaxRot){
      moveRight = false;
    }
    if (rotateZ < zMinRot){
      moveRight = true;
    }
    if (moveRight){
      rotateZ += 0.005;
      rotateY += 0.005;
    }
    else{
      rotateZ -= 0.005;
      rotateY -= 0.005;
    }
  }
      
  
  void display(){
    fill(colorC);
    pushMatrix();
    translate(width / 2 + position.x - 100, height/2 - 100);
    rotateY(rotateY);
    rotateX(rotateX);
    rotateZ(rotateZ);
    box(size.x, size.y, size.z);
    popMatrix();
  }
}
