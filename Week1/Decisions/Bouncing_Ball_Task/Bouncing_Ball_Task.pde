float xPosition;  // -- Horizontal starting position on 'x' axis in coordinate space
float xVelocity; // -- Horizontal speed in x-direction
float circrad = 50;

void setup()
{
  size(400, 300);
  fill(255, 177, 8);
  textSize(48);

  xPosition = width/2;  // -- Initialise xPosition to centre of sketch
  xVelocity = -2; // -- Initialise speed in x-direction to -2 (moving left)
}

void draw()
{
  background(64);

  xPosition = xPosition + xVelocity;  // -- Change position in x on each redraw by velocity in x
  xPosition = int(xPosition);
  circle(xPosition, height/2, circrad);

  if (xPosition <=0) {
    xVelocity = -xVelocity;
  }
  if (xPosition >= width) {
    xVelocity = -xVelocity;
  }
}
