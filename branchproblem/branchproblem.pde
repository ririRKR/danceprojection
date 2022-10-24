Tree tree;

void setup() {
  //smooth(8);
  size(900, 900, P2D);
 // fullScreen();
  tree = new Tree();
  tree.dark = false;
}



void draw() {
  background(0);
  tree.display();
  fill(255);
  textSize(15);
  text(str(tree.dark), width/2, height/2);
}

void keyPressed(){
  tree.dark = true;
}

void keyReleased(){
  tree.dark = false;
}
