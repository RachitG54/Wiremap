class sunset
{
  float c =3;
  spotlight sun = new spotlight(0,2*c,depth+2*c,5*c);
  float speedsunx=0;
  float speedsuny=0.078*c;
  float speedsunz=-0.06*c;  
  fireworks bang1 = new fireworks();
  fireworks bang2= new fireworks();
int flag = 1;
  float timetest = 0;
/* Projector
---------------------------------------------------------*/

  float colwaterred=0;
  float colwatergreen=0;
  float colwaterblue=128;
  int sunup=1;
     int flag2=0;
/*square wave stuff*/
float colour;
float   offsetsquare = 0.6*c;            
   float sineamplitude;
   float sinewavelength = map_length/offsetsquare;
   float midysquare = 3*c;             //inches
   float lengthysquare = 10*c;             //inches
   float squarewavespeed =0.9*c;      //inches/milliseconds
   float stepsquare = 0.5*c;
   float timesquare = map_length/squarewavespeed;
   int timesquare2 = (int)(timesquare);
   float pitchsquare = map_length/offsetsquare;
   int amplitudeindex;
   float squarewavex=0;
   int squarewavedelta = 1;
   float sinelength = 0.7*c;
   float constant = 2*c;
   int count=0;
  float temp2 =212; 
    
   void create()
   {
        noCursor();
  noStroke();
  fill(0);
  rect(0, 0, width, height);
  
  if((time>starttime+timetest+222958-lapsetime)&&(time<starttime+timetest+231000-lapsetime))
   {
     bang1.create();
   
     if((time>starttime+timetest+228455-lapsetime)&&(time<starttime+timetest+231000-lapsetime))
     {
       bang2.create();
     }
   }
   loader();
   int i;
   float temp;
     temp = 255-sun.centrey*40/c;
   //tint(sun.colred,sun.colgreen,sun.colblue);
   if(sunup==1)
   image(sky,0,0,displayWidth,displayHeight);
   
   
   if(sunup==1)
     {
       if(temp<5)temp=0;
       fill(255,125,0,temp);
       rect(0,0,displayWidth,displayHeight);
       //println(temp);
     }
   if(sunup==0)
   {
    // println(temp);
     temp2 = temp2-speedsuny*30/c;
     if(temp2<5)temp2=0;
     fill(255,125,50,temp2);
     rect(0,0,displayWidth,displayHeight);
   }
   for(i=0;i<wire;i++)
   {
     
     int left3 = i * (width) / wire;
     if((i>100)&&(i<170))
     {
     rectMode(CORNERS);
    rect(left3,0,(i+1)* (width) / wire,height);
    rectMode(CORNER);
     }
    fill(0);
    rectMode(CORNERS);
    rect(left3+string_pix_count,0,(i+1)* (width) / wire,height);
    rectMode(CORNER);
   }
   
 if(count==0)
 squarewavex = squarewavex + squarewavespeed*squarewavedelta;
 count++;
 if(count>1)
 {count=0;
 flag=1;
 }
 
if((squarewavex>=map_length-0.2)||(squarewavex<=0.2))
{
   squarewavedelta = -squarewavedelta;
}
//println(squarewavex);

      float y_top_coord ;
     float y_bot_coord ;
     float y_top_proj ;                      // compensate for projection morphing IN INCHES
     float y_bot_proj ;
     float y_height_proj;
     
    float ballsiney=  constant*sin((TWO_PI/sinewavelength)*(squarewavex));
    ballsiney = ballsiney+midysquare+sun.radius;
    move();
    sun.create();
   for(i=0;i<wire;i++)
   {
     //amplitudeindex = ((int)((x_by_ind[i]+squarewavex+(map_length/2))/pitchsquare))%(offsetsquare);
     //     amplitudeindex=1;
      sineamplitude = constant*sin((TWO_PI/sinewavelength)*(x_by_ind[i]+squarewavex));
     y_top_coord = midysquare+sineamplitude;
     y_bot_coord = 0;
     
     
     y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
     y_bot_proj = y_bot_coord * depth / z_by_ind[i];
     y_height_proj = y_top_proj - y_bot_proj;
   if(sun.centrez>35*c)    
   {
     colwaterred = colwaterred - 5*(speedsunz)/c;
     colwatergreen = colwatergreen - 12*(speedsunz)/c;
     colwaterblue = colwatergreen - 8*(speedsunz)/c;
   fill(5*(depth+sun.radius-sun.centrez)/c,12*(depth+sun.radius-sun.centrez)/c,120+8*(depth+sun.radius-sun.centrez)/c);
   }
   else
   {
    fill(64,164,223); 
   }
   //println(128+8*(depth+sun.radius-sun.centrez));
    // rect 3 is filler for sliver
    //fill(colour1,colour2,colour3);
    float left3 = i * (width) / wire;
    float top3 = (height/ppi - y_top_proj) * ppi;
    float wide3 = string_pix_count;
    float tall3 = y_height_proj * ppi;
   //println(sineamplitude + " " + i + " " + x_by_ind[i]+" "+ y_top_coord+" "+y_bot_coord+" " + top3+" "+tall3 + " "+displayHeight);
    rect(left3, top3, string_pix_count, tall3);
    
     if(sun.centrey>9*c)
     {
       y_bot_coord = y_top_coord;
       y_top_coord = y_bot_coord+0.1*c;
       
     y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
     y_bot_proj = y_bot_coord * depth / z_by_ind[i];
     y_height_proj = y_top_proj - y_bot_proj;
        
        left3 = i * (width) / wire;
       top3 = (height/ppi - y_top_proj) * ppi;
         wide3 = string_pix_count;
       tall3 = y_height_proj * ppi;
       fill(255);
       rect(left3, top3, string_pix_count, tall3);
     }   
   }
   
   }
   void move()
   {
     sun.centrex = sun.centrex+speedsunx;
     if(sun.centrez<depth-depth_levels*depth_unit/2)
     {
       sun.centrey = sun.centrey-speedsuny;
       if(sun.centrey<1*c)sunup=0;
     }
     else
     {
     sun.centrey = sun.centrey+speedsuny;
     }
     if((sun.centrey>0)&&(sun.centrey<9*c)&&(flag2==0))
     {
       sun.colgreen = sun.colgreen+speedsuny*30/c;
        
     }
      if((sun.centrey>0)&&(sun.centrey<7*c)&&(flag2==1))
       {
       sun.colgreen = sun.colgreen-speedsuny*30/c;
       }   
       //println(sun.colgreen);
     if(sun.centrey>9*c)
     {
       sun.colgreen=196;sun.colred=196;sun.colblue=0;
       flag2 = 1;
     }
     sun.centrez = sun.centrez+speedsunz;
  
   }
}
