
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
}

/* This method returns a Star object corresponding to given id number
   in the dataset.
   
   Parameters:
   int id - the id of the Star info in the dataset
 */
 
 Star loadStar(int id) {
  for(int i = 0; i < table.getRowCount(); i++)
  {
    Star star;
    TableRow row = table.getRow(i);
    if(row.getInt("id") == id)
    {
       star = new Star(row.getFloat("ra"), row.getFloat("dec"), row.getFloat("mag"),row.getInt("id"));
       return star;
    }
  }  
  return null;
}

 /*
      This method returns the location at which tar appears in array input. Return -1 if not found
      
      Parameters 
      String tar- The string to be searched
      String[] input -array to be searched
      int len- length till which to search
  */
  
int iscontained(String tar,String[] input, int len)
{
  
  for(int i = 0; i < len; i++){
   
      if(tar.equals(input[i]))
      {
        print("here i am");
        return i;
      }
  }
  return -1;
}

/* This method returns a list of constellations from a given set
   of names.
   
   Parameters:
   int len- Point till the array names is to be read
   String[] names - an array of constellation names
 */
 
Constellation[] loadConstellation(String[] names,int len) {
  Constellation[] constellations = new Constellation[len];
  for (int i=0; i< len; i++){
    constellations[i] = new Constellation(names[i]);
  }
  for(int i = 0; i < table.getRowCount(); i++){
    TableRow row = table.getRow(i);
    int loc = iscontained(row.getString("con"), names , len);
    if( loc != -1){
      Star starx = new Star(row.getFloat("ra"), row.getFloat("dec"), row.getFloat("mag"),row.getInt("id"));
      constellations[loc].addStar(starx);
    }
  }  
  return constellations;
  }
