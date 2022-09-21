float rX, rY, rW, rH;
float tX, tY, tW, tH;
float rVX, rVY;
float rA;

float fS;

void setup(){
  background(#BCF4FF);
  fullScreen();
  rX = width/2-75; rY = height-450; rW = 50; rH = 15;
  tX = width/2; tY = height-150; tW = 150; tH = 500;
  rVX = -.5; rVY = -1;
  rA = -.02;
  
  fS = 25;
}


void draw(){
  noStroke();
  fill(#5A5140);
  
  quad(width/2-tW/2, height/2, width/2+tW/2, height/2, width/2+tW/2, height/2+tH, width/2-tW/2, height/2+tH);
  //quad(width/2-tW/2, tY, tX+tW/2, tY, tW+tW/2, tY+tH, tX-tW/2, tY+tH);
  
  
  pushMatrix();
  translate(rX, rY);
  rotate(PI/4);
  quad(0-rW/2, 0, 0+rW/2, 0, 0+rW/2, 0+rH, 0-rW/2, 0+rH); 
  popMatrix();

  if(rY>220){
    rX+=rVX; rY+=rVY;
    rVX += rA; rVY += rA;
  }
  
  stroke(10);
  line(720, 0, 720, height);
  noStroke();
  fill(#2B5A30);
  rect(0, height-150, width, 150);
  
  
  fill(#FF6F91, random(50));
  circle(random(width/4, 3*width/4), random(0, height/2), random(50));
  
  
}
