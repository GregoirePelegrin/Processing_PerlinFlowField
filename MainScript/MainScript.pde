int nbrCellWidth;
int nbrCellHeight;
float perlinStep;

FlowField flowField;

void setup(){
  size(600, 600);
  frameRate(30);
  
  nbrCellWidth = 30;
  nbrCellHeight = 30;
  perlinStep = 0.1;
  
  flowField = new FlowField();
}

void draw(){
  background(255);
  
  flowField.display();
}
