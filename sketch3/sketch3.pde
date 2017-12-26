/*---------------------------------------------------------*/

float depth             = 43.0;               // The mapline lies 3 meters away from the projector's focal point
float map_length        = 32.0;               // The mapline is 1.28 meters wide
float depth_unit        = 0.25;               // Each depth unit is 5 millimeters
float map_unit          = 0.25;               // Each mapline unit is 5 millimeters
int wire                = 128;                // There are 128 wires in this Wiremap
float depth_thickness   = 20.0;                 // How deep is the field (perpendicular to the mapline)

int flag = 1;
int water_color = 0; 
int dot_height          = 15;                 // height of surface pixels.
int trail_frequency = 10;                           // milliseconds - NOT frequency of wave, but how often a new value gets pushed into the trail arrays (above)
int trail_cycle_count;                              // this gets updated once every (trail_frequency)
int trail_cycle_count_compare;                      // this is used to check to see if we need a new value

/* Projector
---------------------------------------------------------*/

float ppi               = 32;                  // Pixels per millimeter (unit conversion).  Only true for mapline plane - 4 pixels every 5 millimeters
int string_pix_count    = 6;                   // How many columns of pixels are being projected on each string


/* Map
---------------------------------------------------------*/

float[] map             = new float[wire];    // example: map[0] = 90 means that the first string is 45 cm away from the mapline
float[] x_by_ind        = new float[wire];    // x coordinate for each wire
float[] z_by_ind        = new float[wire];    // z coordinate for each wire
/*square wave stuff*/
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
import processing.opengl.*;
static public void main(String args[]) {
  PApplet.main(new String[] { "--present", "sketch3" });
}
void setup(){
size(displayWidth, displayHeight, OPENGL);
frameRate(60);
  background(255);
  loader();
  for(int i=0;i<offsetsquare;i++)
     {
       
       squareamplitude[i] = 4+random(2);
       if(i%2==1)squareamplitude[i] = -squareamplitude[i];
     }
   
}
void draw()
{
  noCursor();
  noStroke();
  fill(0);
  rect(0, 0, width, height);
  squareSurface();
}

public void squareSurface()
{
   
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
println(squarewavex);

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
void loader() {                                           // loads data for this particular wiremap
map[0] = 41;
map[1] = 37;
map[2] = 64;
map[3] = 77;
map[4] = 5;
map[5] = 33;
map[6] = 26;
map[7] = 3;
map[8] = 43;
map[9] = 2;
map[10] = 1;
map[11] = 25;
map[12] = 15;
map[13] = 51;
map[14] = 71;
map[15] = 61;
map[16] = 35;
map[17] = 4;
map[18] = 19;
map[19] = 8;
map[20] = 39;
map[21] = 55;
map[22] = 47;
map[23] = 50;
map[24] = 9;
map[25] = 66;
map[26] = 15;
map[27] = 7;
map[28] = 28;
map[29] = 54;
map[30] = 4;
map[31] = 38;
map[32] = 76;
map[33] = 49;
map[34] = 7;
map[35] = 26;
map[36] = 18;
map[37] = 16;
map[38] = 57;
map[39] = 67;
map[40] = 63;
map[41] = 18;
map[42] = 29;
map[43] = 42;
map[44] = 1;
map[45] = 14;
map[46] = 21;
map[47] = 55;
map[48] = 79;
map[49] = 65;
map[50] = 35;
map[51] = 42;
map[52] = 32;
map[53] = 5;
map[54] = 66;
map[55] = 68;
map[56] = 17;
map[57] = 10;
map[58] = 49;
map[59] = 74;
map[60] = 39;
map[61] = 73;
map[62] = 30;
map[63] = 78;
map[64] = 22;
map[65] = 13;
map[66] = 71;
map[67] = 10;
map[68] = 29;
map[69] = 61;
map[70] = 12;
map[71] = 57;
map[72] = 37;
map[73] = 22;
map[74] = 17;
map[75] = 0;
map[76] = 60;
map[77] = 6;
map[78] = 14;
map[79] = 47;
map[80] = 13;
map[81] = 52;
map[82] = 56;
map[83] = 0;
map[84] = 19;
map[85] = 70;
map[86] = 48;
map[87] = 34;
map[88] = 53;
map[89] = 11;
map[90] = 32;
map[91] = 72;
map[92] = 23;
map[93] = 20;
map[94] = 2;
map[95] = 25;
map[96] = 59;
map[97] = 8;
map[98] = 74;
map[99] = 36;
map[100] = 24;
map[101] = 62;
map[102] = 31;
map[103] = 77;
map[104] = 45;
map[105] = 68;
map[106] = 59;
map[107] = 21;
map[108] = 31;
map[109] = 40;
map[110] = 28;
map[111] = 11;
map[112] = 64;
map[113] = 27;
map[114] = 44;
map[115] = 9;
map[116] = 58;
map[117] = 44;
map[118] = 23;
map[119] = 34;
map[120] = 75;
map[121] = 3;
map[122] = 69;
map[123] = 51;
map[124] = 46;
map[125] = 53;
map[126] = 46;
map[127] = 40;

 
  for(int j=0; j<wire; j++) {                           // calculate x and z coordinates of each wire
    float xmap = (0 - (map_length / 2)) + j*map_unit;
    float hyp = sqrt(sq(xmap) + sq(depth));
    z_by_ind[j] = depth - map[j]*depth_unit;
    x_by_ind[j] = xmap - xmap*map[j]/hyp*depth_unit;
  }
}
