
class Star {
  float rac, dec, mag, x, y, z;
  int id;
  
  /* This method creates a Star object from given polar coords
     and an identifier.
     
     Parameters:
     float rac - the Star's right ascension in degrees
     float dec - the Star's declination in degrees
     float mag - the star's distance from the center of the 
                 Earth in parsecs
     int id    - an identifier for the Star object
   */
  Star(float rac, float dec, float mag, int id) {
    this.rac = rac;
    this.dec = dec;
    this.mag = mag;
    this.id = id;
    
    // calculate cartesian coords from right ascension and declination
    this.x = mag * sin(rac * 15) * cos(90 - dec);
    this.y = mag * sin(rac * 15) * sin(90 - dec);
    this.z = mag * cos(rac * 15); 
  }
  
  /* Draw the star as a point at the current position
  
     Parameters: None
   */
  void drawStar() {
    strokeWeight(10);
    point(x, y, z);
  }
}
