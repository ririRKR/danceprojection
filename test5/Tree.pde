class Tree{
  Tree(){  
     branch = new Branch(0, height, width*30/1440, 0.5, "UP", 2);
     leaves = new ArrayList<Leaf>();
     dark = false;
     //3500
     for (int i = 0; i < 3500; i++) {
       leaves.add(new Leaf(random(0, width), random(0, height), random(width*1/1440, height*50/900), "SPRING"));
     }
     for (int i = 0; i < 4000; i++) {
       leaves.add(new Leaf(random(0, width), random(0, height), random(width*1/1440, height*25/900), "SPRING"));
     }
  }
  
  void display(){
    if(dark == false){
      //branch.f = #F52525;
      stroke(#AA9C7D);
      branch.displayAll();
      noStroke();
      for (Leaf l : leaves) {
        l.seasonSwitch();
        l.display();
      }
    } else {
      //branch.f = 0; //fill
      stroke(0);
      branch.displayAll();
      noStroke();
      for(Leaf l: leaves){
        l.fill = 0;
        l.display();
      }
    }
  }

  ArrayList<Leaf> leaves;
  Branch branch;
  boolean dark;
}
