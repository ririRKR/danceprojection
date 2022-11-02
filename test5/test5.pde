Tree tree;
color bgColor;

void setup() {
  //smooth(8);
  fullScreen();
  //size(500, 500);
  bgColor = #A6D1E8;
  background(bgColor); //#A6D1E8
  
  tree = new Tree();
}


void draw() {
  background(bgColor);
  tree.display();
}

void keyPressed(){
  tree.dark = true;
  //bgColor = #080D36;
  bgColor = 0;
}

void keyReleased(){
  tree.dark = false;
  bgColor = #A6D1E8;
}
