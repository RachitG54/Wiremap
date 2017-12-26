
class sine2
{
  

int flag = 1;
int water_color = 0; 
int dot_height          = 0;                 // height of surface pixels.
int trail_frequency = 10;                           // milliseconds - NOT frequency of wave, but how often a new value gets pushed into the trail arrays (above)
int trail_cycle_count;                              // this gets updated once every (trail_frequency)
int trail_cycle_count_compare;                      // this is used to check to see if we need a new value

/* Projector
---------------------------------------------------------*/




/*square wave stuff*/
float colour;
int   offsetsquare = 2;            
   float [] squareamplitude = new float[offsetsquare];
   float sineamplitude;
   float sinewavelength = map_length/offsetsquare;
   float midysquare = 6;             //inches
   float lengthysquare = 10;             //inches
   float squarewavespeed =0.5;      //inches/milliseconds
   float stepsquare = 0.5;
   float timesquare = map_length/squarewavespeed;
   int timesquare2 = (int)(timesquare);
   float pitchsquare = map_length/offsetsquare;
   int amplitudeindex;
   float squarewavex=0;
   int squarewavedelta = 1;
   float sinelength = 0.7;
   float constant = 4;
   int count=0; 
   
    float colour1 = random(255);
   float colour2 = random(255);
   float colour3 = random(255);
   float deltacolour= 0.9;

   void create()
   {
        noCursor();
  noStroke();
  fill(0);
  rect(0, 0, width, height);
  
   loader();
   int i;
    int remainder = millis() ;
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
     
    colour1 = (colour1+deltacolour)%255;
    colour2 = (colour2+deltacolour)%255;
    colour3 = (colour3+deltacolour)%255;
   for(i=0;i<wire;i++)
   {
     //amplitudeindex = ((int)((x_by_ind[i]+squarewavex+(map_length/2))/pitchsquare))%(offsetsquare);
//     amplitudeindex=1;
      sineamplitude = constant*sin((TWO_PI/sinewavelength)*(x_by_ind[i]+squarewavex));
     y_top_coord = midysquare+sineamplitude+sinelength;
     y_bot_coord = midysquare+sineamplitude-sinelength;
     
     
     
     y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
     y_bot_proj = y_bot_coord * depth / z_by_ind[i];
     colour = 127+random(128);
     y_height_proj = y_top_proj - y_bot_proj;
     fill(255);
    
    // rect 1 is top dot for sliver
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = dot_height;
    rect(left1, top1, string_pix_count, tall1);                                                        // draw a rectangle at that intersect
    
    // rect 2 is bottom dot for sliver
      float left2 = i * (width) / wire;
      float top2 = (height/ppi - y_bot_proj) * ppi-dot_height ;
      float wide2 = string_pix_count;
      float tall2 = dot_height;
      rect(left2, top2, wide2, tall2);                                                        // draw a rectangle at that intersect
   if(i<128/3.0)
   fill(255,0,0);
   else if(i>128*2.0/3)
   fill(0,255,0);
   else
   fill(0,0,255);
    // rect 3 is filler for sliver
    //fill(colour1,colour2,colour3);
    float left3 = i * (width) / wire;
    float top3 = (height/ppi - y_top_proj) * ppi + dot_height;
    float wide3 = string_pix_count;
    float tall3 = y_height_proj * ppi - (dot_height * 2);
   //println(sineamplitude + " " + i + " " + x_by_ind[i]+" "+ y_top_coord+" "+y_bot_coord+" " + top3+" "+tall3 + " "+displayHeight);
    rect(left3, top3, string_pix_count, tall3);
     
   }
   }
}
