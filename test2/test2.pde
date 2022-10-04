ArrayList<branch> branches = new ArrayList<branch>();
float x, y, size, time;
branch b1;
branch b2; branch b3;
boolean done = false;

void setup() {
  size(500, 500);
  background(255);
  time = 5;
  y=height;
 
  
  b1 = new branch(0, height, width/2, 1,"UP");
  branches.add(b1);
  
  b2 = new branch(width/2, b1.bro.get(b1.bro.size()-1).y, width/2, 1, "UP");
  b1.children.add(b2);
  b3 = new branch(width/2, b1.bro.get(b1.bro.size()-1).y, width/2, 1, "DOWN");
  b1.children.add(b3);
  
  println(b1.children);
 

}
void draw() {
  
  b1.displayAll();
  //size = noise(time)*width; // value between 0-1, multiply by height
  
  
  
 /* for(branch b: branches){
    b.display();
    if(b.x>width/2 && done == false){
      branches.add(new branch(width/2, height/2, 1, 5));
      done = true;
      println("hi");
    }
  }
  */
  //println("hi2");
}
