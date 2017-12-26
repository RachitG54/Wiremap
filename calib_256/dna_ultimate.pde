class dna_ultimate
{

Dna dna = new Dna(0,114,13,7,400,15,1,1,0);  //(x0,z0,R,r,pitch,h,req1,req2,phase)
Dna dnaRight = new Dna (30,114,13,7,400,15,1,0,0);
Dna dnaCenter = new Dna (0,114,13,7,400,15,1,0,PI); 
Dna dnaLeft = new Dna (-30,114,13,7,400,15,1,0,0);
Dna dnaCenter2 = new Dna (0,114,13,7,400,15,1,0,PI); 


void create() {
  float timer = time-starttime-158590+lapsetime;
if((time>starttime+158590-lapsetime)&&(time<starttime+201340-lapsetime)) 
{
  dna.show();
}
if(timer>=8000 && yes==1 )dna.visibar(210);
if(timer>=6000 && yes==1 )dna.visibar(410);
if(timer>=4000 && yes==1 )dna.visibar(610);
if(timer>=9000 && yes==1 )dna.invibar(110);
if(timer>=7000 && yes==1 )dna.invibar(310);
if(timer>=9000 && yes==1 )dna.invibar(510);
if(timer>=3000 && yes==1 )dna.invibar(710);



if(timer>=13000){dna.stage=1;yes=0;}
if(timer>=16000){dnaCenter.show();dnaRight.show();dna.stage=5;}
if(timer>=21000){if(dnaCenter.x0>-30)dnaCenter.x0=dnaCenter.x0-0.1;}
if(timer>=25000){dnaLeft.show();dnaCenter2.show();}
}



float mod(int i, float x0, float z0)
{ return sqrt((z_by_ind[i]-z0)*(z_by_ind[i]-z0) + (x_by_ind[i]-x0)*(x_by_ind[i]-x0));
}


//______________________________________



//-------------------------------------
float inPix(float y,int i)
{
return ppi*y*depth/(z_by_ind[i]);
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

float inpx;


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
   
     inpx = depth/z_by_ind[i];
   fill(0,255,0); if((angle(i,x0,z0)+phase)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-(angle(i,x0,z0)+phase-off)*inpx*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x0,z0)+phase)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-pitch+(angle(i,x0,z0)+phase-off)*inpx*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x0,z0)+phase)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-2*pitch+(angle(i,x0,z0)+phase-off)*inpx*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x0,z0)+phase)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-3*pitch+(angle(i,x0,z0)+phase-off)*inpx*pitch/(2*PI), 3, h);
   }
if(mod(i,x1,z0)> r && mod(i,x1,z0) < R && req2==1)
   {
  x1=this.x0+right;
  inpx = depth/z_by_ind[i];

   fill(0,255,0); if((angle(i,x1,z0)+PI)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-(angle(i,x1,z0)+PI-off)*inpx*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x1,z0)+PI)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-pitch+(angle(i,x1,z0)+PI-off)*inpx*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x1,z0)+PI)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-2*pitch+(angle(i,x1,z0)+PI-off)*inpx*pitch/(2*PI), 3, h);
   fill(0,255,0); if((angle(i,x1,z0)+PI)>2*PI){off=2*PI;} else {off=0;}
   rect( i * width / wire,l*height-3*pitch+(angle(i,x1,z0)+PI-off)*inpx*pitch/(2*PI), 3, h);
  
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






















}
