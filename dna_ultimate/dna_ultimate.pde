//  Fullscreen stuff:

import processing.opengl.*;

static public void main(String args[]) {
  PApplet.main(new String[] { "--present", "dna_ultimate" });
}



// Variables for Physical Wiremap
// units in INCHES

float depth = 144.0;                     // distance from projector Mapline
float map_length = 96.0;                // mapline length
float depth_unit = 0.375;                   // units, in inches, along hyp
float map_unit = 0.375;                     // units, in inches, along mapline
int wire = 256;                            // number of wires in contraption
float depth_levels = 160;                     // number of depth levels
float depth_levels_third = depth_levels / 3; //


// Variables for to build the Map

  float[] map = new float[wire];             // distance from mapline to point of intersection along hypot
  float[] x_by_ind = new float[wire];        // x coordinate for each wire
  float[] z_by_ind = new float[wire];        // z coordinate for each wire



void setup() {
  size(displayWidth, displayHeight, OPENGL);
  background(0);
}


Dna dna = new Dna(0,114,13,7,400,15,1,1,0);  //(x0,z0,R,r,pitch,h,req1,req2,phase)
Dna dnaRight = new Dna (30,114,13,7,400,15,1,0,0);
Dna dnaCenter = new Dna (0,114,13,7,400,15,1,0,PI); 
Dna dnaLeft = new Dna (-30,114,13,7,400,15,1,0,0);
Dna dnaCenter2 = new Dna (0,114,13,7,400,15,1,0,PI); 


void draw() {
  noStroke();
loader();

  
fill(0);
rect(0,0,width,height);
dna.show();
if(millis()>=8000 && yes==1 )dna.visibar(210);
if(millis()>=6000 && yes==1 )dna.visibar(410);
if(millis()>=4000 && yes==1 )dna.visibar(610);
if(millis()>=9000 && yes==1 )dna.invibar(110);
if(millis()>=7000 && yes==1 )dna.invibar(310);
if(millis()>=9000 && yes==1 )dna.invibar(510);
if(millis()>=3000 && yes==1 )dna.invibar(710);



if(millis()>=13000){dna.stage=1;yes=0;}
if(millis()>=16000){dnaCenter.show();dnaRight.show();dna.stage=5;}
if(millis()>=21000){if(dnaCenter.x0>-30)dnaCenter.x0=dnaCenter.x0-0.1;}
if(millis()>=25000){dnaLeft.show();dnaCenter2.show();}
}


void loader() {

  map[0]=33;
  map[1]=89;
  map[2]=11;
  map[3]=100;
  map[4]=147;
  map[5]=58;
  map[6]=23;
  map[7]=50;
  map[8]=131;
  map[9]=0;
  map[10]=73;
  map[11]=155;
  map[12]=116;
  map[13]=81;
  map[14]=46;
  map[15]=14;
  map[16]=110;
  map[17]=30;
  map[18]=64;
  map[19]=139;
  map[20]=94;
  map[21]=13;
  map[22]=124;
  map[23]=51;
  map[24]=0;
  map[25]=21;
  map[26]=76;
  map[27]=80;
  map[28]=58;
  map[29]=159;
  map[30]=31;
  map[31]=10;
  map[32]=103;
  map[33]=90;
  map[34]=144;
  map[35]=40;
  map[36]=65;
  map[37]=113;
  map[38]=18;
  map[39]=48;
  map[40]=132;
  map[41]=71;
  map[42]=3;
  map[43]=26;
  map[44]=84;
  map[45]=151;
  map[46]=98;
  map[47]=56;
  map[48]=10;
  map[49]=36;
  map[50]=120;
  map[51]=160;
  map[52]=16;
  map[53]=140;
  map[54]=66;
  map[55]=45;
  map[56]=108;
  map[57]=27;
  map[58]=78;
  map[59]=5;
  map[60]=148;
  map[61]=92;
  map[62]=127;
  map[63]=54;
  map[64]=12;
  map[65]=34;
  map[66]=116;
  map[67]=20;
  map[68]=68;
  map[69]=101;
  map[70]=136;
  map[71]=86;
  map[72]=42;
  map[73]=153;
  map[74]=1;
  map[75]=60;
  map[76]=8;
  map[77]=122;
  map[78]=24;
  map[79]=74;
  map[80]=147;
  map[81]=14;
  map[82]=105;
  map[83]=48;
  map[84]=130;
  map[85]=3;
  map[86]=95;
  map[87]=33;
  map[88]=66;
  map[89]=82;
  map[90]=137;
  map[91]=22;
  map[92]=115;
  map[93]=6;
  map[94]=38;
  map[95]=157;
  map[96]=54;
  map[97]=107;
  map[98]=15;
  map[99]=70;
  map[100]=24;
  map[101]=91;
  map[102]=145;
  map[103]=121;
  map[104]=131;
  map[105]=4;
  map[106]=46;
  map[107]=79;
  map[108]=10;
  map[109]=99;
  map[110]=64;
  map[111]=31;
  map[112]=112;
  map[113]=153;
  map[114]=19;
  map[115]=139;
  map[116]=53;
  map[117]=7;
  map[118]=85;
  map[119]=37;
  map[120]=71;
  map[121]=128;
  map[122]=26;
  map[123]=105;
  map[124]=13;
  map[125]=144;
  map[126]=43;
  map[127]=1;
  map[128]=82;
  map[129]=17;
  map[130]=153;
  map[131]=93;
  map[132]=68;
  map[133]=50;
  map[134]=102;
  map[135]=37;
  map[136]=9;
  map[137]=145;
  map[138]=112;
  map[139]=28;
  map[140]=120;
  map[141]=56;
  map[142]=20;
  map[143]=158;
  map[144]=78;
  map[145]=5;
  map[146]=46;
  map[147]=134;
  map[148]=34;
  map[149]=98;
  map[150]=11;
  map[151]=64;
  map[152]=125;
  map[153]=88;
  map[154]=26;
  map[155]=108;
  map[156]=18;
  map[157]=72;
  map[158]=40;
  map[159]=143;
  map[160]=55;
  map[161]=7;
  map[162]=156;
  map[163]=116;
  map[164]=22;
  map[165]=137;
  map[166]=82;
  map[167]=66;
  map[168]=33;
  map[169]=95;
  map[170]=3;
  map[171]=130;
  map[172]=48;
  map[173]=105;
  map[174]=14;
  map[175]=147;
  map[176]=74;
  map[177]=24;
  map[178]=122;
  map[179]=8;
  map[180]=114;
  map[181]=66;
  map[182]=130;
  map[183]=30;
  map[184]=100;
  map[185]=43;
  map[186]=144;
  map[187]=16;
  map[188]=78;
  map[189]=57;
  map[190]=9;
  map[191]=123;
  map[192]=153;
  map[193]=27;
  map[194]=110;
  map[195]=39;
  map[196]=3;
  map[197]=68;
  map[198]=136;
  map[199]=51;
  map[200]=19;
  map[201]=96;
  map[202]=146;
  map[203]=31;
  map[204]=84;
  map[205]=119;
  map[206]=12;
  map[207]=157;
  map[208]=62;
  map[209]=116;
  map[210]=43;
  map[211]=129;
  map[212]=75;
  map[213]=26;
  map[214]=5;
  map[215]=54;
  map[216]=92;
  map[217]=140;
  map[218]=36;
  map[219]=114;
  map[220]=20;
  map[221]=0;
  map[222]=152;
  map[223]=70;
  map[224]=82;
  map[225]=49;
  map[226]=101;
  map[227]=60;
  map[228]=126;
  map[229]=133;
  map[230]=14;
  map[231]=0;
  map[232]=30;
  map[233]=42;
  map[234]=23;
  map[235]=86;
  map[236]=16;
  map[237]=56;
  map[238]=43;
  map[239]=132;
  map[240]=104;
  map[241]=34;
  map[242]=11;
  map[243]=65;
  map[244]=150;
  map[245]=121;
  map[246]=24;
  map[247]=81;
  map[248]=142;
  map[249]=94;
  map[250]=159;
  map[251]=57;
  map[252]=147;
  map[253]=112;
  map[254]=5;
  map[255]=138;




  for(int j=0; j<wire; j++) {                         // calculates x and z coordinates of each wire
    float xmap = (0 - (map_length / 2)) + j*map_unit;
    float hyp = sqrt(sq(xmap) + sq(depth));
    z_by_ind[j] = depth - map[j]*depth_unit;
    x_by_ind[j] = xmap - xmap*map[j]/depth*depth_unit;
  }
}

//___________________________________________________________________________________________________


float mod(int i, float x0, float z0)
{ return sqrt((z_by_ind[i]-z0)*(z_by_ind[i]-z0) + (x_by_ind[i]-x0)*(x_by_ind[i]-x0));
}


//______________________________________



//-------------------------------------
float inPix(float y,int i)
{
return y*23*768/(10*z_by_ind[i]);
}

//------------------------------------------------------------------------

float angle (int i, float x0, float z0)
{
  if(i>255){i=i-256;}
  float x1= x_by_ind[i]-x0;
  float z1= z_by_ind[i]-z0;
  float res= atan2(z1,x1);
  if(res<0){return res+2*3.14159;}
  else
  {return res;}
  
 }

//-------------------------------------------------------------------------
float o=0;
int yes=1;
int t=0;
float off=0;
float c=0;
float x1,right=0;

class Dna
{
public float x0,z0,R,r,pitch,phase;
public int stage=0,h,req1,req2;
public float l=2.5;
public Dna (float xc, float zc,float Rc, float rc,float pitchc, int hc, int req1, int req2,float phase) {x0=xc; z0=zc;R=Rc;r=rc;h=hc;pitch=pitchc;this.req1=req1;this.req2=req2;this.phase=phase;}


public void show() 
{
  
 for(int i=0;i<wire;i++)
 {
   if(mod(i,x0,z0)> r && mod(i,x0,z0) < R && req1==1)
   {
   
     
   fill(0,255,0); if((angle(i,x0,z0)+phase)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-(angle(i,x0,z0)+phase-off)*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x0,z0)+phase)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-pitch+(angle(i,x0,z0)+phase-off)*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x0,z0)+phase)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-2*pitch+(angle(i,x0,z0)+phase-off)*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x0,z0)+phase)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-3*pitch+(angle(i,x0,z0)+phase-off)*pitch/(2*PI), 3, h);
   }
if(mod(i,x1,z0)> r && mod(i,x1,z0) < R && req2==1)
   {
  x1=this.x0+right;

   fill(0,255,0); if((angle(i,x1,z0)+PI)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-(angle(i,x1,z0)+PI-off)*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x1,z0)+PI)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-pitch+(angle(i,x1,z0)+PI-off)*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x1,z0)+PI)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-2*pitch+(angle(i,x1,z0)+PI-off)*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x1,z0)+PI)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-3*pitch+(angle(i,x1,z0)+PI-off)*pitch/(2*PI), 3, h);
  
  }
   if(x1<30 && stage==1)
   right=right+0.0005;
   if(x1<-30 && stage==5)
   right=right-0.0005;
   
 }
  if(l>1.05)
  l=l-0.005;
 
}


public void visibar(float level)
{
  for(int i=0;i<wire;i++)
 {
   if(abs(z_by_ind[i]-this.z0)<3 && abs(x_by_ind[i]-x0)<this.R )
   {
     fill(255,255,255,o);
     rect( i*width/wire, level, 3, 15);
   }
     
 } 
o=o+0.2;
//stage++;
}


public void invibar(float level)
{
  for(int i=0;i<wire;i++)
 {
   if(abs(x_by_ind[i]-this.x0)<3 && abs(z_by_ind[i]-z0)<this.R )
   {
     fill(255,255,255,o);
     rect( i*width/wire, level, 3, 15);
   }
     
 } 
o=o+0.2;
}


}






















/*
public class Bar
{
  public float x,z,h,x0;
  public Bar (float x, float z, float h, float x0) {this.x=x;this.z=z;this.h=h;this.x0=x0;}
  
  public void show(){
  
    for(int i=0;i<wire;i++)
 {
   if(abs(x_by_ind[i]-this.x0)<3 && abs(z_by_ind[i]-z0)<this.R )
   {
     fill(255);
     rect( i*width/wire, h, 3, 15);
   }
     
 }
    
  }
}
*/
