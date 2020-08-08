class FlowField{
  ArrayList<ArrayList<Cell>> cells;
  float xTime;
  float yTime;
  float zTime;
  
  FlowField(){
    this.cells = new ArrayList<ArrayList<Cell>>();
    this.xTime = random(10000);
    this.yTime = random(10000);
    this.zTime = random(10000);
    
    float xCellSize = width/nbrCellWidth;
    float yCellSize = height/nbrCellHeight;
    ArrayList<Cell> temp;
    for(int i=0; i<nbrCellWidth; i++){
      temp = new ArrayList<Cell>();
      for(int j=0; j<nbrCellHeight; j++){
        Cell cell = new Cell(i*xCellSize, j*yCellSize, xCellSize, yCellSize);
        temp.add(cell);
      }
      cells.add(temp);
    }
    
    this.update();
  }
  
  void update(){
    zTime += perlinZStep;
    
    for(int i=0; i<this.cells.size(); i++){
      for(int j=0; j<this.cells.get(i).size(); j++){
        float angle = map(noise(this.xTime+i*perlinStep, this.yTime+j*perlinStep, this.zTime), 0, 1, 0, TWO_PI);
        cells.get(i).get(j).setAngle(angle);
      }
    }
  }
  
  void display(){
    for(int i=0; i<this.cells.size(); i++){
      for(Cell cell : this.cells.get(i)){
        cell.display();
      }
    }
  }
}
