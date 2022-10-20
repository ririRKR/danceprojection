class Tree{
  Tree(){  
     branch = new Branch(0, height, width*30/1440, 0.5, "UP", 2);
     dark = false;
  }
  
  void display(){
    if(dark == false){
      /*
      println("Hi");
      branch.f = #5D523B;
      println(branch.f);
      branch.displayAll();
      */
      branch.f = #5D523B;
      fill(branch.f);
      circle(width/4, height/2, 50);
    } else {
      /*
      println("hello");
      branch.f = 0; //fill
      branch.displayAll();
      */
      branch.f = 0;
      fill(branch.f);
      circle(width/4, height/2, 50);
    }
  }
  
  Branch branch;
  boolean dark;
}
