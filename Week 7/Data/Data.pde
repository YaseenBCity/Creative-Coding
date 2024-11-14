String[] data;
float[] values;

void setup() {
  size(800, 400);
  data = loadStrings("data.txt");
  values = new float[data.length];

  for (int i = 0; i < data.length; i++) {
    values[i] = float(data[i]);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < values.length; i++) {
    float x = map(i, 0, values.length, 0, width);
    float y = map(values[i], 0, max(values), height, 0);
    ellipse(x, y, 10, 10);
  }
}
