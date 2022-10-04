class Branch{
  Branch(float xIn, float yIn, float sizeIn, float lIn, String typeIn, int tIn){
    x = xIn;
    y = yIn;
    size = sizeIn;
    time = 5;
    type = typeIn;
    t = tIn;

    l = lIn;
    
    vectors = new ArrayList<PVector>();
    children = new ArrayList<Branch>();
    vectors.add(new PVector(x, y));
    
    while(x<width-width/l){ //while x is less than the width minus the interval
      vectors.add(new PVector(x, y)); //point is added to the vectors
      if(type.equals("UP")){ //if the type is up
        y -=.5; //2 //y is subtracted by a greater interval
      } else if(type.equals("REALLYUP")){
        y -=7; //3.5
      } else if(type.equals("BACKWARD")){
        y -=2;
      } else if (type.equals("DOWN")){ //if type is down
        y -=.25; //y is subracted by a lesser interval
      } else {
        println("error in type inside display function"); //if there is no type
      }
      x++;
      /*
      if(type.equals("BACKWARD")){
       // x--; //doesn't work
      } else {
        x++;
      }
      */
       time += 0.01; // time is incrimented
      }
      
    if(t>0){
      println(t);
      if(t!=1){
       // println("end vector x: " + vectors.get(vectors.size()-1).x + " end vector y: " + vectors.get(vectors.size()-1).y);
        children.add(new Branch(vectors.get(vectors.size()-1).x, vectors.get(vectors.size()-1).y, size, l+1, "BACKWARD", t-1));
        children.add(new Branch(vectors.get(vectors.size()-1).x, vectors.get(vectors.size()-1).y, size, l+1, "REALLYUP", t-1));
        children.add(new Branch(vectors.get(vectors.size()-1).x, vectors.get(vectors.size()-1).y, size, l+1, "UP", t-1));
        children.add(new Branch(vectors.get(vectors.size()-1).x, vectors.get(vectors.size()-1).y, size, l+1, "DOWN", t-1));
      } else {
        // println("end vector x: " + vectors.get(vectors.size()-1).x + " end vector y: " + vectors.get(vectors.size()-1).y);
        children.add(new Branch(vectors.get(vectors.size()-1).x, vectors.get(vectors.size()-1).y, size, 100, "BACKWARD", t-1));
        children.add(new Branch(vectors.get(vectors.size()-1).x, vectors.get(vectors.size()-1).y, size, 100, "REALLYUP", t-1));
        children.add(new Branch(vectors.get(vectors.size()-1).x, vectors.get(vectors.size()-1).y, size, 100, "UP", t-1));
        children.add(new Branch(vectors.get(vectors.size()-1).x, vectors.get(vectors.size()-1).y, size, 100, "DOWN", t-1));
      }
    } else{
      //println("done");
    }
  }
  
  void displayAll(){
    //background(255);
    stroke(#5D523B); //#AA9C7D
    strokeWeight(size);
    fill(#AA9C7D);
    beginShape();
    for(PVector pv: vectors){
      vertex(pv.x, pv.y);
    }
    endShape();
   for(Branch b: children){
     b.displayAll();
   }
  }


  float x;
  float y;
  float size;
  float time;
  float l;
  String type;
  int t;
  
  ArrayList<PVector> vectors;
  ArrayList<Branch> children;
}
