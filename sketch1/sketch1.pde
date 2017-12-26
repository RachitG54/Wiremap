
import processing.opengl.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
 
Minim minim;
AudioPlayer song;
FFT fft;
 
// Variables for Physical Wiremap
// units in INCHES

  float depth = 43.0;                     // distance from projector Mapline
  float map_length = 32.0;                // mapline length
  float depth_unit = 0.25;                   // units, in inches, along hyp
  float map_unit = 0.25;                     // units, in inches, along mapline
  int wire = 128;                            // number of wires in contraption
  float depth_levels = 80;                     // number of depth levels
  float depth_levels_third = depth_levels / 3; //
  boolean loaded = false;                    // switch to load info only once
// Variables for the Projector

  int wires_hit = 128;                       // how many wires the projector hits
  float ppi = 32.0;                         // pixels per inch
int string_pix_count    = 6;  
// Variables for to build the Map

  float[] map = new float[wire];             // distance from mapline to point of intersection along hypot
  float[] x_by_ind = new float[wire];        // x coordinate for each wire
  float[] z_by_ind = new float[wire];        // z coordinate for each wire
float[] angle;
float[] y, x;
void setup()
{
  
   size(displayWidth, displayHeight, OPENGL);
 //fullScreen();
  // always start Minim first!
  minim = new Minim(this);
  background(255);
  // specify 512 for the length of the sample buffers
  // the default buffer size is 1024
  song = minim.loadFile("mashUp.mp3", 2048);
  song.play();
 
  // an FFT needs to know how 
  // long the audio buffers it will be analyzing are
  // and also needs to know 
  // the sample rate of the audio it is analyzing
  fft = new FFT(song.bufferSize(), song.sampleRate());
   y = new float[fft.specSize()];
  x = new float[fft.specSize()];
  angle = new float[fft.specSize()];
}
 
void draw()
{
  
   noStroke();
  if (loaded == false) {
    loader();
    loaded = true;
  }
  fill(0);
  rect(0,0,width,height);
  // first perform a forward fft on one of song's buffers
  // I'm using the mix buffer
  //  but you can use any one you like
  fft.forward(song.mix);
    pushMatrix();
  translate(width/2, height/2);
  for (int i = 0; i < fft.specSize() ; i++) {
    y[i] = y[i] + fft.getBand(i)/100;
    x[i] = x[i] + fft.getFreq(i)/100;
    angle[i] = angle[i] + fft.getFreq(i)/2000;
    rotateX(sin(angle[i]/2));
    rotateY(cos(angle[i]/2));
    //    stroke(fft.getFreq(i)*2,0,fft.getBand(i)*2);
    fill(fft.getFreq(i)*2, 0, fft.getBand(i)*2);
    pushMatrix();
    translate((x[i]+50)%width/3, (y[i]+50)%height/3);
    box(fft.getBand(i)/20+fft.getFreq(i)/15);
    popMatrix();
  }
  popMatrix();
  pushMatrix();
  translate(width/2, height/2, 0);
  for (int i = 0; i < fft.specSize() ; i++) {
    y[i] = y[i] + fft.getBand(i)/1000;
    x[i] = x[i] + fft.getFreq(i)/1000;
    angle[i] = angle[i] + fft.getFreq(i)/100000;
    rotateX(sin(angle[i]/2));
    rotateY(cos(angle[i]/2));
    //    stroke(fft.getFreq(i)*2,0,fft.getBand(i)*2);
    fill(0, 255-fft.getFreq(i)*2, 255-fft.getBand(i)*2);
    pushMatrix();
    translate((x[i]+250)%width, (y[i]+250)%height);
    box(fft.getBand(i)/20+fft.getFreq(i)/15);
    popMatrix();
  }
  popMatrix();
 /*
  stroke(255, 0, 0, 128);
  // draw the spectrum as a series of vertical lines
  // I multiple the value of getBand by 4 
  // so that we can see the lines better
  float xcoord,zcoord;
  float val;
  float CONSTANT = 0.1;
  float great = sqrt(sq(x_by_ind[wire-1]+16) + sq(z_by_ind[wire-1]-21));
  float freqval = fft.specSize()/great;
  for(int i = 0; i < wire; i++)
  {
    xcoord = x_by_ind[i]+map_length/2;
    val = sqrt(sq(xcoord) + sq(z_by_ind[i]));
    val = val*freqval;
    float y_bot_coord = 0;
    float y_top_coord = abs(fft.getFreq((int)val))*CONSTANT;
    float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord* depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    
  colorMode(HSB);// sets color mode value 
  fill((int)i, 255,255);//cycles through hue and brightness to expose a greater color palete
    rect(left1, top1, string_pix_count, tall1); 
  }*/
}
void mousePressed() { 
  //noLoop(); 
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
    z_by_ind[j] = depth - map[j]*5;
    x_by_ind[j] = xmap - xmap*map[j]/hyp*depth_unit;
  }
}
