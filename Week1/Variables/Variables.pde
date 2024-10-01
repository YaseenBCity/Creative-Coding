float centrex = width/2;
float centrey = height/2;

float apple = 12;
float banana = 7;
float orange = 6;

void setup(){
  size(500,500);
  background(180);
  println("number of apples: ", apple);
  println("number of bananas: ", banana);
  println("number of oranges: ", orange);
  centrex = width/2;
  centrey = height/2;
  frameRate(45);
}

void draw(){
  background(180);
  
  fill(0,255,0);
  ellipse(centrex - frameCount,centrey - frameCount,60,60);
  
  fill(255,0,0);
  ellipse(centrex + frameCount,centrey - frameCount,60,60);
  
  fill(0,0,255);
  ellipse(centrex - frameCount,centrey + frameCount,60,60);
  
  fill(0,255,255);
  ellipse(centrex + frameCount,centrey + frameCount,60,60);
  
  fill(255,255,0);
  ellipse(centrex - frameCount,centrey,60,60);
  
  fill(252,186,3);
  ellipse(centrex + frameCount,centrey ,60,60);
  
  fill(90,50,170);
  ellipse(centrex ,centrey - frameCount,60,60);
  
  fill(202,3,252);
  ellipse(centrex ,centrey + frameCount,60,60);

}
