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
      fill = color(random(225, 255), random(25, 255));
      /*
      int which = int(random(1, 4));
      if(which == 1){
        fill = color(194, 211, 192, random(25, 255));
      } else if(which == 2){
        fill = color(77, random(104, 124), 70, random(25, 255)); //dark green
      } else if(which == 3){
        fill = color(224, 254, random(230, 255), random(25, 255));
      }
      */
    } else if(season.equals("SPRING")){
      int which = int(random(1, 4));
        if(which == 1){
          fill = color(random(215, 245), 218, 223, random(25, 255)); //pink
        } else if(which == 2){
          fill = color(random(191, 211), 158, 188, random(25, 255)); //light pink
        } else if(which == 3){
          fill = color(random(194, 224), 149, 191, random(25, 255)); //dark pink
        }
    } else if(season.equals("SUMMER")){
      int which = int(random(1, 4));
      if(which == 1){
        fill = color(102, random(112, 142), 96, random(25, 255)); //light green
      } else if(which == 2){
        fill = color(93, random(96, 126), 89, random(25, 255)); //medium green
      } else if(which == 3){
        fill = color(77, random(94, 124), 70, random(25, 255)); //dark green
      }
      
    } else if(season.equals("FALL")){
      int which = int(random(1, 4));
      if(which == 1){
        fill = color(random(225, 255), 102, 51, random(25, 255)); //light orange red
      } else if(which == 2){
        fill = color(random(220, 250), 181, 127, random(25, 255)); // light orange
      } else if(which == 3){
        fill = color(random(220, 250), 242, 127, random(25, 255)); //light yellow
      }
    }
  }

  float x, y;
  float size;
  String season;
  color fill;
  
}
