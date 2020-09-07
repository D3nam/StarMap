/*
  void setup() {
    size(200,200,P3D);
    x = width/2;
    y = height/2;
    z = 0;
  }
  Class Star
  {
    //The star class
    var rac,dec;    //right ascension and declination
    var mag;        //Apparent magnitude
  }
  Class Constellation
  {
      //The constellation class
      var name;
    Star ListStar[];
  }
  function readConstellation(name)
  {
     /*Input:name of constellation
       Output:returns constalltion object for that constellation including all stars
  }
  function DrawStar(Star star)
  {
    /*Input: a star object
      Output: Draws the star object with appropriate brightness
      
      //x= radius*sin(rac*15)*cos(90-dec)   radius will be 73.71
      //y=radius*sin(rac*15)*cos(90-dec)
      //z=radius*cos(rac*15)
  }
  function DrawConst(Constellation Const)
  {
    /*Input: Constellation Object.
    Output: Renders the stars of the constellation.
    
    //loop over stars and draw each 
  }
  
  void draw()
  {
    /*Function that will be repeatedly callled for animating/drawing the scene
    
    //Translate to middle of screen
    //Draw Earth          (Sphere radius 63.71 Earth radius approx 6371 1 unit =100km)
    //For Earth do we want to append photo of Earth to sphere?
    //Draw Celestial Sphere(Sphere radius 73.71 Celestial Sphere radius approx 7371 1 unit =100km)
    //Read Constellations.
    /*15 Well known ones
      Orion:Ori
    Aries:Ari
    Leo:Leo
    Sagittarius:Sgr
    Scorpius:Sco
    Taurus:Tau
    Virgo:Vir
    Gemini:Gem 
    Cancer:Cnc
    Pisces:Psc
    Libr:Lib 
    Aquarius:Aqr
    Capricornus:Cap 
    Ursa Major:UMa
    Canis Major:CMa
    //Render Constellations
    //Move with MouseX,MouseY maybe.
  }
  
 */
