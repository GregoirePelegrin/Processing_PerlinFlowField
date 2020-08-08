int count;

int nbrCellWidth;
int nbrCellHeight;
int nbrMarbles;
float perlinStep;
float perlinZStep;
float force;

FlowField flowField;

ArrayList<Marble> marbles;

void setup(){
  size(900, 900);
  frameRate(30);
  background(0);
  
  count = 0;
  
  nbrCellWidth = 100;
  nbrCellHeight = 100;
  nbrMarbles = 1000;
  perlinStep = 0.1;
  perlinZStep = 0.05;
  force = 0.2;
  
  flowField = new FlowField();
  
  marbles = new ArrayList<Marble>();
  for(int i=0; i<nbrMarbles; i++){
    Marble marble = new Marble();
    marbles.add(marble);
  }
}

void draw(){  
  if(count%10 == 0) flowField.update();
  
  for(Marble marble : marbles){
    marble.update();
    marble.display();
  }
  
  count++;
}
