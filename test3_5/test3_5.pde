Branch b1;
ArrayList<Leaf> leaves;

void setup(){
  //smooth(8);
  fullScreen();
  //size(1000, 500);
  background(0);
 
  b1 = new Branch(0, height, width*30/1440, 0.5, "UP", 2);
  
  leaves = new ArrayList<Leaf>();
  for(int i = 0; i < 2000; i++){
    leaves.add(new Leaf(random(0, width), random(0, height), random(width*1/1440, height*50/900), "SPRING"));
  } 
  for(int i = 0; i < 2000; i++){
    leaves.add(new Leaf(random(0, width), random(0, height), random(width*1/1440, height*25/900), "SPRING"));
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
