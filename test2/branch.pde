class branch {
  
  branch(float xIn, float yIn, float xEIn, float sizeIn, float timeIn, String typeIn){
    x = xIn;
    y = yIn;
    xE = xEIn;
    size = sizeIn;
    time = timeIn;
    
    type = typeIn;
 
    children = new ArrayList<branch>();
  }
  
  void displayAll(){
    if(x<xE){
      display();
    } else{
        for(branch b: children){
          pushMatrix();
          translate(x, -y);
          b.display();
          popMatrix();
        }
      }
    }

    
  void display(){
    time += 0.01;
    stroke(0);
    if(type.equals("UP")){
      y -=(noise(time)*2);
    } else if (type.equals("DOWN")){
      y -=(noise(time)*.5);
    } else {
      println("error in type inside display function");
    }
    
    x += 1;
    strokeWeight(random(10, 15));
    point(x, y);
  }

  
  float x;
  float y;
  float xE;
  float size;
  float time;
  
  String type;

  ArrayList<branch> children;
}
