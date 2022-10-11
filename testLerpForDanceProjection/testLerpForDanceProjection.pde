color fromC;
color toC;
float increase;

void setup(){
  size(500, 700);
  background(#A6D1E8);
  increase = 0;
  
  fromC = color(204, 102, 0);
  toC = color(0, 102, 153);
}


void draw(){
  increase+=0.01;
  fill(lerpColor(fromC, toC, increase));
  circle(width/2, height/2, 400);
}
