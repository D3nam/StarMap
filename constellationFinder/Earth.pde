
class Earth {
  float x, y, z, rad;
  
  Earth() {
    this.x = 0;
    this.y = 0;
    this.z = 0;
    this.rad = EARTH_RADIUS;
  }
  
  void drawEarth() {
    pushMatrix();
    translate(x, y, z);
    sphere(rad);
    popMatrix();
  }
}
