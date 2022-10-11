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
    } else if(season.equals("SPRING")){
      which = int(random(1, 5));
        if(which == 1 || which == 2){
          fill = color(245, 218, 223, random(25, 255)); //pink
        } else if(which == 3){
          fill = color(211, 158, 188, random(25, 255)); //light pink
        } else if(which == 4){
          fill = color(224, 149, 191, random(25, 255)); //dark pink
        }
    } else if(season.equals("SUMMER")){
      which = int(random(1, 4));
      if(which == 1){
        fill = color(202, 237, 196, random(25, 255)); //light green
      } else if(which == 2){
        fill = color(184, 227, 176, random(25, 255)); //medium green
      } else if(which == 3){
        fill = color(164, 216, 155, random(25, 255)); //dark green
      }
    } else if(season.equals("FALL")){
      which = int(random(1, 4));
      if(which == 1){
        fill = color(255, 102, 51, random(25, 255)); //light orange red
      } else if(which == 2){
        fill = color(250, 181, 127, random(25, 255)); // light orange
      } else if(which == 3){
        fill = color(250, 242, 127, random(25, 255)); //light yellow
      }
    }
  }

  float x, y;
  float size;
  String season;
  color fill;
  int which;
  
}
