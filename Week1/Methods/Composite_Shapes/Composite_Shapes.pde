int backcol = 100;
color green = color(0, 255, 0);
color red = color(255, 0, 0);
color blue = color(0, 0, 255);




void setup() {
  size(400, 400);
  background(backcol);
}


void draw() {
  background(backcol);
  drawComposite(width/2, height/2, 0.5);
  drawComposite(width/4, height/4, 1.2);
}

void drawComposite(float xPos, float yPos, float scale) {
  fill(red);
  circle(xPos, yPos, 100 * scale);
  fill(blue);
  circle(xPos, yPos, 75 * scale);
  fill(green);
  circle(xPos, yPos, 50 * scale);
}
