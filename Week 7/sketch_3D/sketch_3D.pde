PImage brickTexture;
PImage woodTexture;
PImage waterTexture;
float angleX = 0;
float angleY = 0;
float rotationSpeed = 0.25; // Speed of rotation per frame

// Flags to track which keys are being held down
boolean wPressed = false;
boolean aPressed = false;
boolean sPressed = false;
boolean dPressed = false;
boolean textchange1 = false;
boolean textchange2 = false;
boolean textchange3 = false;

void setup() {
  size(1000, 1000, P3D);                // Set up a 3D canvas
  brickTexture = loadImage("brick.jpg"); // Load the brick texture image
  woodTexture = loadImage("texture.jpeg");
  waterTexture = loadImage("water.png");
  textureMode(NORMAL);                 // Use normalized texture coordinates (0 to 1)
}

void draw() {
  background(100);
  directionalLight(255,0,0,1,0,-1);
  lights();                            // Enable lighting
  translate(width / 2, height / 2, 0); // Center the cube on the canvas
  
  // Apply continuous rotation based on key presses
  if (wPressed) angleX -= rotationSpeed;
  if (sPressed) angleX += rotationSpeed;
  if (aPressed) angleY -= rotationSpeed;
  if (dPressed) angleY += rotationSpeed;

  rotateX(angleX);
  rotateY(angleY);
  
  noStroke();                          // Remove edges for a smooth look
  beginShape(QUADS);         // Draw each face of the cube using quads
  if (textchange1 == true) {
     texture(brickTexture);

  }else{
    fill(255);
  }
  
  if (textchange2 == true){
    texture(woodTexture);
  }
  if (textchange3 == true){
    texture(waterTexture);

  }
  scale(3);
  // Front face
  vertex(-50, -50,  50, 0, 0);
  vertex( 50, -50,  50, 1, 0);
  vertex( 50,  50,  50, 1, 1);
  vertex(-50,  50,  50, 0, 1);

  // Back face
  vertex( 50, -50, -50, 0, 0);
  vertex(-50, -50, -50, 1, 0);
  vertex(-50,  50, -50, 1, 1);
  vertex( 50,  50, -50, 0, 1);

  // Right face
  vertex( 50, -50,  50, 0, 0);
  vertex( 50, -50, -50, 1, 0);
  vertex( 50,  50, -50, 1, 1);
  vertex( 50,  50,  50, 0, 1);

  // Left face
  vertex(-50, -50, -50, 0, 0);
  vertex(-50, -50,  50, 1, 0);
  vertex(-50,  50,  50, 1, 1);
  vertex(-50,  50, -50, 0, 1);

  // Top face
  vertex(-50, -50, -50, 0, 0);
  vertex( 50, -50, -50, 1, 0);
  vertex( 50, -50,  50, 1, 1);
  vertex(-50, -50,  50, 0, 1);

  // Bottom face
  vertex(-50,  50,  50, 0, 0);
  vertex( 50,  50,  50, 1, 0);
  vertex( 50,  50, -50, 1, 1);
  vertex(-50,  50, -50, 0, 1);
  
  endShape();
}

// Track key presses to set flags
void keyPressed() {
  if (key == 'w' || key == 'W') sPressed = true;
  if (key == 's' || key == 'S') wPressed = true;
  if (key == 'a' || key == 'A') aPressed = true;
  if (key == 'd' || key == 'D') dPressed = true;
  if (key == '1') textchange1 = true;
  if (key == '2') textchange2 = true;
  if (key == '3') textchange3 = true;
  if (key == 'q') rotationSpeed = 0.05;
}

// Track key releases to reset flags
void keyReleased() {
  if (key == 'w' || key == 'W') sPressed = false;
  if (key == 's' || key == 'S') wPressed = false;
  if (key == 'a' || key == 'A') aPressed = false;
  if (key == 'd' || key == 'D') dPressed = false;
  if (key == '1') textchange1 = false;
  if (key == '2') textchange2 = false;
  if (key == '3') textchange3 = false;
  if (key == 'q') rotationSpeed = 0.25;

}
