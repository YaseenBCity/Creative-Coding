boolean save = false;
void setup() {
  size(500, 500);
}
 
void draw() {
  for (int y = 0; y < height; y=y+1) {
    for (int x = 0; x < width; x=x+1) {
      float r = 255 * (x / (float) width);
      float g = 255 * (y / (float) height);
      float b = 127.5 + 127.5 * sin(millis() / 1000.0);
      set(x, y, color(r, g, b));
    }
  }
  for (int i = 0; i<width; i++){
    float col = random(255);
    fill(col);
    rect(10*i ,100,50,50);
    
  }
  if (save == true){
    save("canvas_save.png");
    save = false;
  }
}

void keyPressed(){
  if (key == 's'){
    save = true;
  }
}
