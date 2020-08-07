class FlowField{
  ArrayList<ArrayList<Cell>> cells;
  
  FlowField(){
    this.cells = new ArrayList<ArrayList<Cell>>();
    
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
    float xTime = random(10000);
    float yTime = random(10000);
    
    for(int i=0; i<this.cells.size(); i++){
      for(int j=0; j<this.cells.get(i).size(); j++){
        float angle = map(noise(xTime+i*perlinStep, yTime+j*perlinStep), 0, 1, 0, TWO_PI);
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
