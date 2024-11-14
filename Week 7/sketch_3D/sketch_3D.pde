PImage textureImg;
float angle = 0;

void setup() {
  size(800, 600, P3D);
  textureImg = loadImage("texture.jpeg");
  
  if (textureImg == null) {
    println("Image not loaded. Please check the file path.");
  }
}

void draw() {
  background(200);
  lights();
  translate(width / 2, height / 2, 0);
  rotateY(angle);
  noStroke();

  if (textureImg != null) {  // Only apply texture if image loaded successfully
    beginShape(SPHERE);
    texture(textureImg);
    sphere(150);
    endShape();
  } else {
    fill(255);  // Use white fill if texture fails to load
    sphere(150);
  }

  angle += 0.10;
}
