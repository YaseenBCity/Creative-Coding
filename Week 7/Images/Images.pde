PImage i; //Variable called i
boolean redraw = false;

void setup(){
  size(900,900);
  
  i = loadImage("greenery.jpg");
  image(i,0,0,900,900  );
  strokeWeight(5);
  stroke(255,128);
}

void draw(){
  if (redraw == true){
    image(i,0,0,900,900);
    redraw = false;
  }
  
  if (mousePressed){
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
}

void keyPressed(){
  if (key == 's'){
    save("canvas.jpg");
  }
  if (key == 'r'){
    redraw = true;
    print("Image has been redrawn");
  }
  
}
