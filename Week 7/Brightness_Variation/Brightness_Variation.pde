PImage img;
int s = 25;
 
void setup() {
  size(640, 480);
  img = loadImage("greenery.jpg");
  stroke(64);
  rectMode(CENTER);
  background(127);
}
 
void draw() {                            // -- Get the colour of the PImage
  color c = img.get(mouseX, mouseY);   // -- called 'img' at cell mouseX,mouseY.
  fill(c);                              // -- Set fill to this colour.
  float bright = brightness(c) / 100.0;
  print(bright);
  rect(mouseX, mouseY, s*bright, s*bright);          // -- Then draw a rectangle at
}                                        // -- the mouse position.  
