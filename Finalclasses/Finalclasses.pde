
import processing.opengl.*;
  
float depth             = 43.0;               // The mapline lies 3 meters away from the projector's focal point
float map_length        = 32.0;               // The mapline is 1.28 meters wide
float depth_unit        = 0.25;               // Each depth unit is 5 millimeters
float map_unit          = 0.25;               // Each mapline unit is 5 millimeters
int wire                = 128;                // There are 128 wires in this Wiremap
float depth_thickness   = 20.0;                 // How deep is the field (perpendicular to the mapline)
float depth_levels = 80;                     // number of depth levels
  float depth_levels_third = depth_levels / 3; //
  int string_pix_count    = 6;                   // How many columns of pixels are being projected on each string
int wires_hit = 128;                       // how many wires the projector hits

  float[] map = new float[wire];             // distance from mapline to point of intersection along hypot
  float[] x_by_ind = new float[wire];        // x coordinate for each wire
  float[] z_by_ind = new float[wire];        // z coordinate for each wire

// Variables for slivers

  boolean loaded = false;                    // switch to load info only once
  float ppi = 32.0;                         // pixels per inch


childrenmod modulerain = new childrenmod();
sine_surface128 modulesine = new sine_surface128();
sine2 modulesine2 = new sine2();
squarewave modulesquare = new squarewave();
all moduleall = new all();
rotatesimple modulerotate = new rotatesimple();
barequalizer modulebar = new barequalizer();
simplewater modulesinez = new simplewater();
parallelogram p1 = new parallelogram();
letters l1 = new letters();
static public void main(String args[]) {
  PApplet.main(new String[] { "--present", "Finalclasses" });
}

void setup() {
  size(displayWidth, displayHeight, OPENGL);
  background(255);
  frameRate(60);
  modulerain.initialize();
  modulesquare.initialize();
  modulebar.initialize();
  
}
float t=1000;
int next = 0;
int countmodule=0;
void draw() {
  PVector v1,v2,v3;
  v1 = new PVector(0,0,0);
  v2 = new PVector(8,12,0);
  v3 = new PVector(2,0,0);
  if(next==0)
  {
    modulerain.create();
  }
  else if(next==1)
  {
    l1.create();
  }
  else if (next==2)
  modulesquare.create();
  else if(next==3)
  moduleall.create();
  else if(next==4)
  modulerotate.create();
  else if(next==5)
  modulebar.create();
  else if(next==6)
  modulesinez.create();
  else if(next==7)
  {
    modulesine2.create();
  }
}
void mousePressed()
{
  
  //modulesine.mousepressed();
}
void keyReleased()
{
  //modulesine.keyreleased();
   if(next==1)
  {
    l1.keyreleased();
  }
}
void keyPressed()
{
  //modulesine.keypressed();
  if(key=='1')next++;
  if(next==1)
  {
    l1.keypressed();
  }
  else if(next==3)
  moduleall.keypressed();
}

void loader() {
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


  for(int j=0; j<wire; j++) {                         // calculates x and z coordinates of each wire
    float xmap = (0 - (map_length / 2)) + j*map_unit;
    float hyp = sqrt(sq(xmap) + sq(depth));
    z_by_ind[j] = depth - map[j]*depth_unit;
    x_by_ind[j] = xmap - xmap*map[j]/depth*depth_unit;
  }
}

