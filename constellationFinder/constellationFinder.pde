
void setup() {
  size(500, 500, P3D);
}

void drawSphere(double x, double y, double z, double rad) {
  pushMatrix();
  translate((float)x, (float)y, (float)z);
  sphere((float)rad);
  popMatrix();
}

void draw() {
  translate(width/2, height/2);
  Star st = new Star(0, 0, 0);
  st.drawStar();
}