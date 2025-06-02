/**
 * Load and Display a Shape. 
 * Illustration by George Brower. 
 * 
 * The loadShape() command is used to read simple SVG (Scalable Vector Graphics)
 * files and OBJ (Object) files into a Processing sketch. This example loads an
 * SVG file of a monster robot face and displays it to the screen. 
 */

PShape bot;

boolean strike = false;
int timer;
int striketime;
int offtimer;


void setup() {
  size(640, 360);
  // The file "bot1.svg" must be in the data folder
  // of the current sketch to load successfully
  bot = loadShape("bot1.svg");
  timer = (int) random(2000, 5000);
  int mil = millis();
  striketime = mil + timer;
  offtimer = mil + 1000;
} 

void draw(){
  background(102);
  // println(strike);
  // println("Timer " + timer);
  //println("striketime: " + striketime);
  //println("millis: " + millis());
  //println("offtimer: " + offtimer);
  
  if (strike) {
     shape(bot, 110, 90, 100, 100);  

  }
  
  if (offtimer <= millis()) {
      strike = false;       

  }
  
  if (striketime <= millis()) {
     timer = (int) random(2000, 5000);
     int mil = millis();
     striketime = mil + timer;
     offtimer = mil + 1000;
    strike = true;
    
  }
}
