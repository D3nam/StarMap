
Table table;

/* This method loads the dataset into the global variable
   table.
   
   Parameters: None
 */
void loadTable() {
  table = loadTable(DATA_FILENAME, "header");
  
  /* The following bit of code is only used for testing purposes
     to see how the table was loaded. Edit and change as you wish.
   */
  TableRow row;
  for (int i=0; i<5; i++) {
    row = table.getRow(i);
    print("ID:   " + row.getInt("id")     + "\n" +
          "rac:  " + row.getFloat("ra")   + "\n" +
          "dec:  " + row.getFloat("dec")  + "\n" +
          "dist: " + row.getFloat("dist") + "\n");
  }
  
}

/* This method returns a Star object corresponding to given id number
   in the dataset.
   
   Parameters:
   int id - the id of the Star info in the dataset
 */
Star loadStar(int id) {
  return null;
}

/* This method returns a Constellation object corresponding to given
   constellation name.
   
   Parameters:
   String name - name of the constellation
 */
Constellation loadConstellation(String name) {
  return null;
}

/* This method returns a list of constellations from a given set
   of names.
   
   Parameters:
   String[] names - an array of constellation names
 */
Constellation[] loadConstellations(String[] names) {
  Constellation[] constellations = new Constellation[names.length];
  for (int i=0; i<names.length; i++) {
    constellations[i] = loadConstellation(names[i]);
  }
  return constellations;
}
