
class squarewave
{
  
int flag = 1;
int water_color = 0; 
int dot_height          = 15;                 // height of surface pixels.
int trail_frequency = 10;                           // milliseconds - NOT frequency of wave, but how often a new value gets pushed into the trail arrays (above)
int trail_cycle_count;                              // this gets updated once every (trail_frequency)
int trail_cycle_count_compare; 
int   offsetsquare = 5;            
   float [] squareamplitude = new float[offsetsquare];
   float midysquare = 7.5;             //inches
   float lengthysquare = 10;             //inches
   float squarewavespeed =7.0;      //inches/milliseconds
   float stepsquare = 0.5;
   float timesquare = map_length/squarewavespeed;
   int timesquare2 = (int)(timesquare);
   float pitchsquare = map_length/offsetsquare;
   int amplitudeindex;
   float squarewavex=0;
   int squarewavedelta = 1;
   int count=0; 
   void initialize()
   {
     size(displayWidth, displayHeight, OPENGL);

  background(255);
  loader();
  for(int i=0;i<offsetsquare;i++)
     {
       
       squareamplitude[i] = 4+random(2);
       if(i%2==1)squareamplitude[i] = -squareamplitude[i];
     }
   }
   void create()
   {
      noCursor();
  noStroke();
  fill(0);
  rect(0, 0, width, height);
  int i;
    int remainder = millis() ;
 if(count==0)
 squarewavex = squarewavex + squarewavespeed*squarewavedelta;
 count++;
 if(count>30)
 {count=0;
 flag=1;
 }
 loader();
 
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

   for(i=0;i<wire;i++)
   {
     amplitudeindex = ((int)((x_by_ind[i]+squarewavex+(map_length/2))/pitchsquare))%(offsetsquare);
//     amplitudeindex=1;
     if(amplitudeindex%2==0)
     {y_top_coord = midysquare+squareamplitude[amplitudeindex];
     y_bot_coord = midysquare;
     y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
     y_bot_proj = y_bot_coord * depth / z_by_ind[i];
     y_height_proj = y_top_proj - y_bot_proj;
     fill(255);}
     else
     {
     y_top_coord = midysquare;
     y_bot_coord = midysquare+squareamplitude[amplitudeindex];
     y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
     y_bot_proj = y_bot_coord * depth / z_by_ind[i];
     y_height_proj = y_top_proj - y_bot_proj;
     fill(255);
     }     
    
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

    // rect 3 is filler for sliver
    fill(0, 0, 255);
    float left3 = i * (width) / wire;
    float top3 = (height/ppi - y_top_proj) * ppi + dot_height;
    float wide3 = string_pix_count;
    float tall3 = y_height_proj * ppi - (dot_height * 2);
    rect(left3, top3, string_pix_count, tall3);  
   }      
   }
}

