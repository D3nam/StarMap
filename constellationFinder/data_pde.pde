Table table;
int SMALL=5;    //Smaller size for testing 
//int SMALL=88; //Switch to bigger size Later
class Star
{
  int rac,dec,mag;
  Star(int right,int declination,int magnitude)
  {
    rac=right;
    dec=declination;
    mag=magnitude;
  }
}
class Constellation
{
  String name;
  ArrayList<Star> Stars;
  Constellation(String nam)
  {
    name=nam;
    Stars=new ArrayList<Star>();
  }
}
String[] Constellation_setup()
{
  //Returns All possible constellations in a  of Strings
  String[] ret={"And" ,"Ant", "Aps", "Aqr", "Aql","Ara", "Ari", "Aur", "Boo", "Cae", "Cam", "Cnc", "CVn", "CMa", "CMi", "Cap", "Car", "Cas", "Cen", "Cep", "Cet", "Cha", "Cir", "Col", "Com", "CrA", "CrB", "Crv", "Crt", "Cru", "Cyg", "Del", "Dor", "Dra", "Equ", "Eri","For", "Gem", "Gru", "Her", "Hor", "Hya", "Hyi", "Ind", "Lac", "Leo", "LMi", "Lep", "Lib", "Lup", "Lyn", "Lyr", "Men", "Mic", "Mon", "Mus", "Nor", "Oct", "Oph", "Ori", "Pav", "Peg", "Per", "Phe", "Pic", "Psc", "PsA", "Pup", "Pyx", "Ret", "Sge", "Sgr", "Sco", "Scl", "Sct", "Ser", "Sex", "Tau", "Tel", "Tri", "TrA", "Tuc", "UMa", "UMi", "Vel", "Vir", "Vol", "Vul"};
  return ret;
}
ArrayList<Constellation> allconstellations(String[] constlist,int len)
{
  /*Input:Given an string with constellation names
  Output:A constellation array where each element is a constellation with just name*/
  ArrayList<Constellation> List=new ArrayList<Constellation>(); 
  for(int i=0;i<len;i++)
  {
    Constellation now=new Constellation(constlist[i]);
    List.add(now);
  }
  return List;
}

Constellation get_data(String name)
{
  table = loadTable("hygdata_v3.csv", "header");
  Constellation Newconst=new Constellation(name);
  println(table.getRowCount() + " total rows in table");
  for (TableRow row : table.rows()) 
  {
    if(Newconst.name.equals(row.getString("con"))==true && row.getInt("mag")<=6)
    {
      Star NewStar=new Star(row.getInt("ra"),row.getInt("dec"),row.getInt("mag"));
      Newconst.Stars.add(NewStar);
    }
  }
  return Newconst;
}
void setup()
{
  /*Main function sets up the data*/
  ArrayList<Constellation> Whole=new ArrayList<Constellation>();
  String[] constlist=new String[88];
  constlist=Constellation_setup();
  Whole=allconstellations(constlist,SMALL);
  for(int j=0;j<Whole.size();j++)
  {
    Whole.get(j).Stars = get_data(Whole.get(j).name).Stars;
    for(int i=0;i<Whole.get(j).Stars.size();i++)
    {
      //println(Whole.get(j).Stars.get(i).rac +"rac"+Whole.get(j).Stars.get(i).dec+"Dec"+Whole.get(j).Stars.get(i).mag+"mag");
        println(Whole.get(j).name +"j="+i);
    }
  }
}
