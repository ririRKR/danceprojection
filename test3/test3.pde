Branch b1;
ArrayList<Leaf> leaves;

void setup(){
  //fullScreen();
  size(500, 500);
  background(0);
 
  b1 = new Branch(0, height, 10, 0.5, "UP", 2);
  
  leaves = new ArrayList<Leaf>();
  for(int i = 0; i < 1500; i++){
    leaves.add(new Leaf(random(0, width), random(0, height), random(1, 17.5), "SPRING"));
  }
  
}


void draw(){
  b1.displayAll();
  for(Leaf l: leaves){
    //l.seasonCheck();
    l.display();
  }
  
  
  //background(0);
}
