int nbrCellWidth;
int nbrCellHeight;
int nbrMarbles;
float perlinStep;
float force;

FlowField flowField;

ArrayList<Marble> marbles;

void setup(){
  size(900, 900);
  frameRate(30);
  background(255);
  
  nbrCellWidth = 5000;
  nbrCellHeight = 5000;
  nbrMarbles = 5000;
  perlinStep = 0.005;
  force = 0.2;
  
  flowField = new FlowField();
  //flowField.display();
  
  marbles = new ArrayList<Marble>();
  for(int i=0; i<nbrMarbles; i++){
    Marble marble = new Marble();
    marbles.add(marble);
  }
}

void draw(){
  for(Marble marble : marbles){
    marble.update();
    marble.display();
  }
}
