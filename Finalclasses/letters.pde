class letters
{
  float spanletter = 13;
  float speedletterz = 0.0;
  float startletterz = 23;
  float widthletterz=20;
  float heightletter = 16;
  float widthletter=1.3;
  float startx=13;
  float starty=0;
  char letter='\n';
  parallelogram p1 = new parallelogram();
  semicircle s1 = new semicircle();
  polygon p2 = new polygon();
  void create()
  {
    PVector v1,v2,v3,v4;
    v1 = new PVector();v2 = new PVector();v3 = new PVector();v4 = new PVector();
    float temp;
    float tempy;
     noStroke();
  if (loaded == false) 
  {
    loader();
    loaded = true;
  fill(0);
  rect(0,0,width,height);
  }
  fill(0);
  rect(0,0,width,height);
    
         if(letter =='a')
         { 
           v1.set(startx,starty,0);
           v2.set(startx+widthletter,starty,0);
           v3.set(startx+(spanletter/2.0),starty+heightletter,0);
           v4.set(startx+(spanletter/2.0),starty+heightletter-widthletter,0);
           //println(v1.x+" "+v2.x+" "+v3.x);
           p2.setpolygon(v1,v2,v3,v4,widthletterz,startletterz);
           p2.create();
           v1.set(startx+spanletter,starty,0);
           v2.set(startx+spanletter-widthletter,starty,0);
           v3.set(startx+(spanletter/2.0),starty+heightletter,0);
          v4.set(startx+(spanletter/2.0),starty+heightletter-widthletter,0);
           p2.setpolygon(v1,v2,v3,v4,widthletterz,startletterz);
           //println(p1.leftbottom.x+" "+p1.sidea.x+" "+p1.sideb.x);
           p2.create();
           tempy = (starty+(heightletter/2.0))-(widthletter/2.0);
           temp = startx+((tempy-starty)*(spanletter/(heightletter*2.0)));
           v1.set(temp,tempy,0);
           v2.set(startx+spanletter/2.0,tempy,0);
           tempy = (starty+(heightletter/2.0))+(widthletter/2.0);
           temp = startx+((tempy-starty)*(spanletter/(heightletter*2.0)));
           v3.set(temp,tempy,0);
           //println(v1.x+" "+v2.x+" "+v3.x);
           p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
           p1.create();
           
           tempy = (starty+(heightletter/2.0))-(widthletter/2.0);
           temp = startx+spanletter-((tempy-starty)*(spanletter/(heightletter*2.0)));
           v1.set(temp,tempy,0);
           v2.set(startx+spanletter/2.0,tempy,0);
           tempy = (starty+(heightletter/2.0))+(widthletter/2.0);
           temp = startx+spanletter-((tempy-starty)*(spanletter/(heightletter*2.0)));
           v3.set(temp,tempy,0);
           //println(v1.x+" "+v2.x+" "+v3.x);
           p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
           p1.create();
           
           //println(startletterz);
           //startletterz = startletterz+speedletterz;
         }
         else if(letter =='b')
        {
          v1.set(startx,starty,0);
          v2.set(startx+widthletter,starty,0);
          v3.set(startx,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          v1.set(startx,starty+heightletter/4.0,0);
          s1.setcircle(v1,heightletter/4.0,widthletterz,startletterz,1,widthletter);
          s1.create();
          v1.set(startx,starty+heightletter*0.75,0);
          s1.setcircle(v1,heightletter/4.0,widthletterz,startletterz,1,widthletter);
          s1.create();
          //startletterz = startletterz+speedletterz;
        }
        
         else if(letter =='c')
        {
        
          v1.set(startx+heightletter*0.5,starty+heightletter*0.5,0);
          s1.setcircle(v1,heightletter*0.5,widthletterz,startletterz,-1,widthletter);
          s1.create();
          //startletterz = startletterz+speedletterz;
        }
        
         else if(letter =='d')
        {
          
          v1.set(startx,starty,0);
          v2.set(startx+widthletter,starty,0);
          v3.set(startx,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          v1.set(startx,starty+heightletter*0.5,0);
          s1.setcircle(v1,heightletter/2.0,widthletterz,startletterz,1,widthletter);
          s1.create();
          startletterz = startletterz+speedletterz;
        }
        else if(letter =='e')
        {
          
          v1.set(startx,starty,0);
          v2.set(startx+widthletter,starty,0);
          v3.set(startx,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          v1.set(startx,starty,0);
          v2.set(startx+spanletter,starty,0);
          v3.set(startx,starty+widthletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          v1.set(startx,starty+heightletter/2.0-widthletter/2.0,0);
          v2.set(startx+spanletter,starty+heightletter/2.0-widthletter/2.0,0);
          v3.set(startx,starty+heightletter/2.0+widthletter/2.0,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          v1.set(startx,starty+heightletter-widthletter,0);
          v2.set(startx+spanletter,starty+heightletter-widthletter,0);
          v3.set(startx,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          startletterz = startletterz+speedletterz;
        }
        else if(letter =='f')
        {
          
          v1.set(startx,starty,0);
          v2.set(startx+widthletter,starty,0);
          v3.set(startx,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          v1.set(startx,starty+heightletter/2.0-widthletter/2.0,0);
          v2.set(startx+spanletter,starty+heightletter/2.0-widthletter/2.0,0);
          v3.set(startx,starty+heightletter/2.0+widthletter/2.0,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          v1.set(startx,starty+heightletter-widthletter,0);
          v2.set(startx+spanletter,starty+heightletter-widthletter,0);
          v3.set(startx,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          startletterz = startletterz+speedletterz;
        }
        else if(letter =='g')
        {
          
           v1.set(startx+heightletter*0.5,starty+heightletter*0.5,0);
          s1.setcircle(v1,heightletter*0.5,widthletterz,startletterz,-1,widthletter);
          s1.create();
          v1.set(startx+heightletter*0.5-widthletter,starty+widthletter,0);
          v2.set(startx+heightletter*0.5,starty+widthletter,0);
          v3.set(startx+heightletter*0.5-widthletter,starty+heightletter/3.0,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          v1.set(startx+heightletter*0.5,starty+heightletter/3.0,0);
          v2.set(startx+heightletter*0.5-heightletter/3.0,starty+heightletter/3.0,0);
          v3.set(startx+heightletter*0.5,starty+widthletter+heightletter/3.0,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          startletterz = startletterz+speedletterz;
        }
        else if(letter =='h')
        {
          
          v1.set(startx,starty,0);
          v2.set(startx+widthletter,starty,0);
          v3.set(startx,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          v1.set(startx,starty+heightletter/2.0-widthletter/2.0,0);
          v2.set(startx+spanletter-widthletter,starty+heightletter/2.0-widthletter/2.0,0);
          v3.set(startx,starty+heightletter/2.0+widthletter/2.0,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();     
          v1.set(startx+spanletter-widthletter,starty,0);
          v2.set(startx+spanletter,starty,0);
          v3.set(startx+spanletter-widthletter,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create(); 
          startletterz = startletterz+speedletterz;
        }
        
        else if(letter =='i')
        {
          
          v1.set(startx,starty,0);
          v2.set(startx+spanletter,starty,0);
          v3.set(startx,starty+widthletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          v1.set(startx+spanletter/2.0-widthletter/2.0,starty+widthletter,0);
          v2.set(startx+spanletter/2.0+widthletter/2.0,starty+widthletter,0);
          v3.set(startx+spanletter/2.0-widthletter/2.0,starty+heightletter-widthletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
           v1.set(startx,starty+heightletter-widthletter,0);
          v2.set(startx+spanletter,starty+heightletter-widthletter,0);
          v3.set(startx,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create(); 
          startletterz = startletterz+speedletterz;
        }
        
        else if(letter =='n')
        {
           v1.set(startx,starty,0);
          v2.set(startx+widthletter,starty,0);
          v3.set(startx,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          v1.set(startx,starty+heightletter,0);                      //can add widthletter
          v2.set(startx+spanletter-widthletter,starty,0);
          v3.set(startx+widthletter,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();     
          v1.set(startx+spanletter-widthletter,starty,0);
          v2.set(startx+spanletter,starty,0);
          v3.set(startx+spanletter-widthletter,starty+heightletter,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create(); 
          startletterz = startletterz+speedletterz;
        }
        
        else if(letter =='v')
        {
           v1.set(startx,starty+heightletter,0);                      
          v2.set(startx+spanletter/2.0,starty,0);
          v3.set(startx+widthletter,starty+heightletter,0);
          v4.set(startx+spanletter/2.0,starty+widthletter,0);
          p2.setpolygon(v1,v2,v3,v4,widthletterz,startletterz);
          p2.create(); 
           v1.set(startx+spanletter,starty+heightletter,0);                    
          v2.set(startx+spanletter/2.0,starty,0);
          v3.set(startx+spanletter-widthletter,starty+heightletter,0);
          v4.set(startx+spanletter/2.0,starty+widthletter,0);
          p2.setpolygon(v1,v2,v3,v4,widthletterz,startletterz);
          p2.create(); 
          startletterz = startletterz+speedletterz;
        }
        
        else if(letter =='s')
        {
           v1.set(startx+heightletter*0.25,starty+heightletter*0.75-widthletter,0);
          s1.setcircle(v1,heightletter*0.25,widthletterz,startletterz,-1,widthletter);
          s1.create();
          v1.set(startx+heightletter*0.25,starty+heightletter*0.25,0);
          s1.setcircle(v1,heightletter*0.25,widthletterz,startletterz,1,widthletter);
          s1.create();
          v1.set(startx+heightletter*0.25,starty+heightletter-2*widthletter,0);                      //can add widthletter
           v2.set(startx+heightletter*0.375,starty+heightletter-2*widthletter,0);  
          v3.set(startx+heightletter*0.25,starty+heightletter-widthletter,0); 
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();     
          v1.set(startx+heightletter*0.25,starty,0);
          v2.set(startx+heightletter*0.25,starty+widthletter,0);
          v3.set(startx+heightletter*0.085,starty,0);
          p1.setpolygon(v1,v2,v3,widthletterz,startletterz);
          p1.create();
          startletterz = startletterz+speedletterz;
        }
  }
  void keyreleased()
  {
    if(key=='a')letter = 'a';
    else if(key=='b')letter = 'b';
    else if(key=='c')letter = 'c';
    else if(key=='d')letter = 'd';
    else if(key=='e')letter = 'e';
    else if(key=='f')letter = 'f';
    else if(key=='g')letter = 'g';
    else if(key=='h')letter = 'h';
    else if(key=='i')letter = 'i';
    else if(key=='j')letter = 'j';
    else if(key=='k')letter = 'k';
    else if(key=='l')letter = 'l';
    else if(key=='m')letter = 'm';
    else if(key=='n')letter = 'n';
    else if(key=='o')letter = 'o';
    else if(key=='p')letter = 'p';
    else if(key=='q')letter = 'q';
    else if(key=='r')letter = 'r';
    else if(key=='s')letter = 's';
    else if(key=='t')letter = 't';
    else if(key=='u')letter = 'u';
    else if(key=='v')letter = 'v';
    else if(key=='w')letter = 'w';
    else if(key=='x')letter = 'x';
    else if(key=='y')letter = 'y';
    else if(key=='z')letter = 'z';
  }
  void keypressed()
  {
    if(key=='a')letter = 'a';
    else if(key=='b')letter = 'b';
    else if(key=='c')letter = 'c';
    else if(key=='d')letter = 'd';
    else if(key=='e')letter = 'e';
    else if(key=='f')letter = 'f';
    else if(key=='g')letter = 'g';
    else if(key=='h')letter = 'h';
    else if(key=='i')letter = 'i';
    else if(key=='j')letter = 'j';
    else if(key=='k')letter = 'k';
    else if(key=='l')letter = 'l';
    else if(key=='m')letter = 'm';
    else if(key=='n')letter = 'n';
    else if(key=='o')letter = 'o';
    else if(key=='p')letter = 'p';
    else if(key=='q')letter = 'q';
    else if(key=='r')letter = 'r';
    else if(key=='s')letter = 's';
    else if(key=='t')letter = 't';
    else if(key=='u')letter = 'u';
    else if(key=='v')letter = 'v';
    else if(key=='w')letter = 'w';
    else if(key=='x')letter = 'x';
    else if(key=='y')letter = 'y';
    else if(key=='z')letter = 'z';
  }
}
