class Leaf {
  Leaf(float xIn, float yIn, float sizeIn, String seasIn) {
    x = xIn;
    y = yIn;
    size = sizeIn;
    season = seasIn;
    whichWinter = int(random(1, 4));
    whichSpring = int(random(1, 5));
    whichSummer = int(random(1, 4));
    whichFall = int(random(1, 4));
    transparency = random(25, 255);
    
    wind = new PVector(5.0, 0.0);
    
    increase = 0;
    seasonFillSet();
    
    done = false;
  }

  void display() {
    fill(fill);
    strokeWeight(0);
    circle(x, y, size);
  }
  
  void seasonFillSet() {
    fillWinter = color(random(225, 255), transparency);
    
    if (whichSpring == 1 || whichSpring == 2) {
      fillSpring = color(245, 218, 223, transparency); //pink
    } else if (whichSpring == 3) {
      fillSpring = color(211, 158, 188, transparency); //light pink
    } else if (whichSpring == 4) {
      fillSpring = color(224, 149, 191, transparency); //dark pink
    }

    if (whichSummer == 1) {
      fillSummer = color(202, 237, 196, transparency); //light green
    } else if (whichSummer == 2) {
      fillSummer = color(184, 227, 176, transparency); //medium green
    } else if (whichSummer == 3) {
      fillSummer = color(164, 216, 155, transparency); //dark green
    }

    if (whichFall == 1) {
      fillFall = color(255, 102, 51, transparency); //light orange red
    } else if (whichFall == 2) {
      fillFall = color(250, 181, 127, transparency); // light orange
    } else if (whichFall == 3) {
      fillFall = color(250, 242, 127, transparency); //light yellow
    }
    
  }

  void seasonSwitch() {
    if (season.equals("SPRING") && done == false) {
      fill = lerpColor(fillSpring, fillSummer, increase);
    } else if(season.equals("SPRING") && done == true){
      fill(fillSpring);
    } else if (season.equals("SUMMER")) {
      fill = lerpColor(fillSummer, fillFall, increase);
    } else if (season.equals("FALL")) {
      fill = lerpColor(fillFall, fillWinter, increase+0.002);
    } else if (season.equals("WINTER")) {
      fill = lerpColor(fillWinter, fillSpring, increase);
    }
    increase+=0.006; //0.00625 - ends in winter //0.0065 if she wants black at end //increase of increase (0.006
    println(increase);
    if (increase >=1) {
      increase = 0;
      if (season.equals("SPRING") && done == false) {
        season = "SUMMER";
      } else if (season.equals("SUMMER")) {
        season = "FALL";
      } else if (season.equals("FALL")) {
        season = "WINTER";
      } else if (season.equals("WINTER")) {
        done = true;
        season = "SPRING";
      }
    }
  }
  
  void wind(){
    x+=wind.x;
    y+=wind.y;
    if(wind.x >=6){
      wind.x = -5.0;
    } else if(wind.x <= 4){
      wind.x = 5.0;
    }
  }
  

  float x, y;
  float size;
  String season;
  color fill;
  color fillSpring;
  color fillSummer;
  color fillFall;
  color fillWinter;
  int whichSpring;
  int whichSummer;
  int whichFall;
  int whichWinter;
  float transparency;
  
  PVector wind;

  String fromS;
  color fromC;
  String toS;
  color toC;
  float increase;
  
  boolean done;
}
