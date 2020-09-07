
float STAR_RADIUS = 73.71;

class Star {
  float rac, dec, x, y, z;
  int id;
  
  Star(float rac, float dec, int id) {
    this.rac = rac;
    this.dec = dec;
    this.id = id;
    
    // calculate cartesian coords from right ascension and declination
    this.x = STAR_RADIUS * sin(rac * 15) * cos(90 - dec);
    this.y = STAR_RADIUS * sin(rac * 15) * sin(90 - dec);
    this.z = STAR_RADIUS * cos(rac * 15); 
  }
  
  void drawStar() {
    pushMatrix();
    translate(x, y, z);
    sphere(STAR_RADIUS);
    popMatrix();
  }
}
