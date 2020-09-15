
class Constellation {
  ArrayList<Star> stars;
  String name;
  
  /* This method creates a Constellation object consisting
      of a given name and an empty list of stars.
     
     Parameters:
     String name - the Constellation's name
   */
  Constellation(String name) {
    this.name = name;
    stars = new ArrayList<Star>();
  }
  
  /* This method creates a Constellation object consisting
      of a given name and a given ArrayList of stars.
     
     Parameters:
     String name - the Constellation's name
     ArrayList<Star> stars - the stars of the Constellation
   */
  Constellation(String name, ArrayList<Star> stars) {
    this.name = name;
    this.stars = stars;
  }
  
  /* This method sets the name of the Constellation.
     
     Parameters:
     String newName - the Constellation's new name
   */
  void setName(String newName) {
    this.name = newName;
  }
  
  /* This method adds a star to the constellation.
     
     Parameters:
     Star newStar - the Star to be added
   */
  void addStar(Star newStar) {
    this.stars.add(newStar);
  }
  
  /* This method removes and returns a Star from the
     Constellation by its id.
     
     Parameters:
     int starId - the Star's id
   */
  Star popStar(int starId) {
    for (Star st: this.stars) {
      if (st.id == starId) {
        this.stars.remove(st);
        return st;
      }
    }
    return null;
  }
  
  /* This method removes a Star from the Constellation 
     by its id.
     
     Parameters:
     int starId - the Star's id
   */
  void removeStar(int starId) {
    popStar(starId);
  }
  
  /* This method draws all the Stars in the Constellation
     
     Parameters: None
   */
  void drawConstellation() {
    Star first = stars.get(0);
    float lastX = first.x;
    float lastY = first.y;
    float lastZ = first.z;
    for (Star st: this.stars) {
      line(lastX, lastY, lastZ, st.x, st.y, st.z);
      st.drawStar();
      lastX = st.x;
      lastY = st.y;
      lastZ = st.z;
    }
    line(lastX, lastY, lastZ, first.x, first.y, first.z);
  } 
}
