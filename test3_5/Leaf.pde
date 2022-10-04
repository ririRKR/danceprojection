class Leaf{
  Leaf(float xIn, float yIn, float sizeIn, String seasIn){
    x = xIn; 
    y = yIn;
    size = sizeIn;
    season = seasIn;
    seasonCheck();
  }
  
  void display(){
    fill(fill);
    strokeWeight(0);
    circle(x, y, size);
  }
  
  void seasonCheck(){
    if(season.equals("WINTER")){
      fill = color(224, 254, random(230, 255), random(255));
    } else if(season.equals("SPRING")){
      fill = color(random(215, 245),218,223, random(255));
    } else if(season.equals("SUMMER")){
      fill = color(144, 238, 144, random(255));
    } else if(season.equals("FALL")){
      int which = int(random(1, 4));
      if(which == 1){
        fill = color(random(235, 255), 102, 51, random(255)); //light orange red
      } else if(which == 2){
        fill = color(random(220, 250), 181, 127, random(255)); // light orange
      } else if(which == 3){
        fill = color(random(220, 250), 242, 127, random(255)); //light yellow
      }
    }
  }

  float x, y;
  float size;
  String season;
  color fill;
  
}
