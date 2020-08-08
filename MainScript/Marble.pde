class Marble{
  float xPos;
  float yPos;
  
  float xSpeed;
  float ySpeed;
  
  Marble(){
    this.xPos = random(width);
    this.yPos = random(height);
    
    this.xSpeed = 0;
    this.ySpeed = 0;
  }
  
  void update(){
    if(this.xPos<0) this.xPos = width-1;
    if(this.xPos>=width) this.xPos = 0;
    if(this.yPos<0) this.yPos = height-1;
    if(this.yPos>=height) this.yPos = 0;
    
    // Get the angle of the cell on which the marble is
    float angleCell = 0;
    int x = floor(this.xPos/width*nbrCellWidth);
    int y = floor(this.yPos/height*nbrCellHeight);
    angleCell = flowField.cells.get(x).get(y).angleValue;
    
    this.xSpeed = cos(angleCell)*force;
    this.ySpeed = sin(angleCell)*force;
    
    /*if(this.xSpeed>5) this.xSpeed = 5;
    if(this.ySpeed>5) this.ySpeed = 5;
    if(this.xSpeed<-5) this.xSpeed = -5;
    if(this.ySpeed<-5) this.ySpeed = -5;*/
  }
  
  void display(){
    stroke(0, 5);
    line(this.xPos, this.yPos, this.xPos+this.xSpeed, this.yPos+this.ySpeed);
    this.xPos += this.xSpeed;
    this.yPos += this.ySpeed;
  }
}
