color fromC;
color toC;
float increase;
String direction;

void setup(){
  size(500, 700);
  background(#A6D1E8);
  increase = 0;
  
  fromC = color(204, 102, 0);
  toC = color(0, 102, 153);
  direction = "FORWARD";
}


void draw(){
  if(direction.equals("FORWARD")){
    increase+=0.01; 
  } else {
    increase-=0.01;
  }
  fill(lerpColor(fromC, toC, increase));
  println(increase);
  circle(width/2, height/2, 400);
  if(increase >= 1){
    direction = "BACKWARD";
  } else if(increase <= 0){
    direction = "FORWARD";
  }
}
