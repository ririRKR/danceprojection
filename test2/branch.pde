class branch {
  
  branch(float xIn, float yIn, float xEIn, float sizeIn, String typeIn){
    x = xIn;
    y = yIn;
    xE = xEIn;
    size = sizeIn;
    time = 5;
    
    type = typeIn;
    bro = new ArrayList<PVector>();
    children = new ArrayList<branch>();
    
    while(x<width/2){
      bro.add(new PVector(x, y));
      if(type.equals("UP")){
        y -=(noise(time)*2);
      } else if (type.equals("DOWN")){
        y -=(noise(time)*.5);
      } else {
        println("error in type inside display function");
      }
       x++;
       time += 0.01;
      }
      
     
    }
 
   
  
  void displayAll(){
    background(255);
      display();
      for(branch b: children){
          b.display();
        }
      }

    
  void display(){
    stroke(0);
    strokeWeight(15);
    
    beginShape();
    for(PVector pv: bro){
      vertex(pv.x, pv.y);
    }
    endShape();
  }

  
  float x;
  float y;
  float xE;
  float size;
  float time;
  
  float xT;
  float yT;
  
  String type;

  ArrayList<branch> children;
  ArrayList<PVector> bro;
}
