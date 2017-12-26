class lastmridul
{
  float halfHeight=24;
   float heightMax=20;
  float Xmax=32;
  float Ymax=23;
  float Xmid=25;
  float Zmid=25;
 
  float delta=0.01;
  float m=0;
float t0=5;
  void create()
  {
    float x,z,y,t;
for(t=5;t<60;t++)
  {
    x=t*cos(6*t)*cos(m);
    z=120+t*sin(6*t)*sin(m);
    y=t;
    for(int i=0;i<wire;i++)
      {
        if(dist(x,z,i)<0.2*t)
         {if(t>t0&&t<t0+2)
         {fill(158,227,220);rect(i*width/wire,height-inPix(y,i),5,inPix(4,i));}
         else
           {fill(0,255,0);
           rect(i*width/wire,height-inPix(y,i),3,inPix(2,i));}
         }
      }
     
  }
  m+=0.05;
  t0+=0.5;
  if(t0>=60)
  t0=5;
  }
  
float  inPix(float y,int i)
{
return ppi* y*depth/z_by_ind[i];
}

float dist(float x,float z,int i)
{
return sqrt(sq(x-x_by_ind[i])+sq(z-z_by_ind[i]));
}

}
