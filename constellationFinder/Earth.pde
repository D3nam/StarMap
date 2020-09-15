
class Earth {
  float x, y, z, rad;
  
  /* This method creates an Earth object at the origin.
     
     Parameters: None
   */
  Earth() {
    this.x = 0;
    this.y = 0;
    this.z = 0;
    this.rad = EARTH_RADIUS;
  }
  
  /* This method draws the Earth object.
     
     Parameters: None
   */
  void drawEarth() {
    pushMatrix();
    translate(x, y, z);
    sphere(rad);
    popMatrix();
  }
}
