float x;
float y;

void setup() {
  size(200, 300);
  background(100);

  x = random(130, width -130);
  y = random(50, height - 50);
  x = int(x);
  y = int(y);
}


void draw() {
  background(100);
  fill(255, 255, 255);
  circle(x, y, 100);
  rect(x -65, y - 10, 130, 20);

  if (mouseX >= (x-65) && mouseX <= (x+65)) {
    if (mouseY >= (y-10) && mouseY <=(y+10)) {
      fill(0, 0, 255);
      rect(x -65, y - 10, 130, 20);
    }
  }
  if (mouseX >= (x-50) && mouseX <= (x+50)) {
    if (mouseY >= (y-50) && mouseY<= (y+50)) {
      fill(255, 0, 0);
      circle(x, y, 100);
      fill(255, 255, 255);
      rect(x -65, y - 10, 130, 20);
    }
  }
  if (mouseX >= (x-50) && mouseX <= (x+50)) {
    if (mouseY >= (y-50) && mouseY<= (y+50)) {
      if (mouseX >= (x-65) && mouseX <= (x+65)) {
        if (mouseY >= (y-10) && mouseY <=(y+10)) {
          fill(255, 255, 255);
          circle(x, y, 100);
          fill(0, 0, 255);
          rect(x -65, y - 10, 130, 20);
        }
      }
    }
  }
  
}
