class Tree{
  Tree(){  
     branch = new Branch(0, height, width*30/1440, 0.5, "UP", 2);
     leaves = new ArrayList<Leaf>();
     dark = false;
     //3500
     for (int i = 0; i < 3000; i++) {
       leaves.add(new Leaf(random(0, width), random(0, height), random(width*1/1440, height*50/900), "FALL"));
     }
     for (int i = 0; i < 2500; i++) {
       leaves.add(new Leaf(random(0, width), random(0, height), random(width*1/1440, height*25/900), "FALL"));
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
      /*
      //branch.f = 0; //fill
      stroke(0);
      branch.displayAll();
      noStroke();
      for(Leaf l: leaves){
        l.fill = 0;
        l.display();
      }
    }*/
    rectMode(CENTER);
    fill(0);
    rect(width/2, height/2, width, height);
  }
  }

  ArrayList<Leaf> leaves;
  Branch branch;
  boolean dark;
}
