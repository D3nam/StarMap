
class Constellation {
  ArrayList<Star> stars;
  
  Constellation() {
    stars = new ArrayList<Star>();
  }
  
  Constellation(ArrayList<Star> stars) {
    this.stars = stars;
  }
  
  void addStar(Star newStar) {
    this.stars.add(newStar);
  }
  
  Star popStar(int starId) {
    for (Star st: this.stars) {
      if (st.id == starId) {
        this.stars.remove(st);
        return st;
      }
    }
    return null;
  }
  
  void removeStar(int starId) {
    popStar(starId);
  }
  
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
