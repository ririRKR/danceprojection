

// notes from tech rehearsal:
//   1) no cursor done
//   2) fade in/out to black at beginning and end
//   3) fade between scenes X
// make red of fall less harsh done


Tree tree;
color bgColor;
String k;
int t;


void setup() {
  noCursor();
  //smooth(8);
  fullScreen();
  //size(1200, 900);
  bgColor = #A6D1E8;
  background(bgColor); //#A6D1E8
  
  tree = new Tree();
  t = 255;
}


void draw() {
 
  background(bgColor);
  tree.display();
  
  rectMode(CENTER);
  fill(0, t);
  rect(width/2, height/2, width, height); 
  

}

void keyPressed(){
  if(keyCode == ENTER){
    tree.dark = true;
    //bgColor = #080D36;
    bgColor = 0;
    k = "ENTER";
  }
  if(key == '1'){
    t-=10;
    k = "1";
  }
  if(key == '0'){
    t+=10;
    k = "2";
  }
  
  println(t);
  
}

void keyReleased(){
  if(k.equals("ENTER")){
     tree.dark = false;
     bgColor = #A6D1E8; 
  } 
  k = "";
}
