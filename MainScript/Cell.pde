class Cell{
  float xPos;
  float yPos;
  float xSize;
  float ySize;
  
  float angleValue;
  
  Cell(float x, float y, float xs, float ys){
    this.xPos = x;
    this.yPos = y;
    this.xSize = xs;
    this.ySize = ys;
  }
  
  void setAngle(float a){
    this.angleValue = a;
  }
  
  void display(){
    stroke(0, 100);
    
    translate(this.xPos+this.xSize/2, this.yPos+this.ySize/2);
    rotate(this.angleValue);
    line(-min(this.xSize, this.ySize)/2, 0, min(this.xSize, this.ySize)/2, 0);
    triangle(min(this.xSize, this.ySize)/2, 0, 3*min(this.xSize, this.ySize)/8, -min(this.xSize, this.ySize)/4, 3*min(this.xSize, this.ySize)/8, min(this.xSize, this.ySize)/4);
    rotate(-this.angleValue);
    translate(-this.xPos-this.xSize/2, -this.yPos-this.ySize/2);
  }
}
