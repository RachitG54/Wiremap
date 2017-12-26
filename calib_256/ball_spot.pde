class ball_spot
{
    float b1,b2,b3,b4,b5;
  int k1=1,k2=1,k3=1,k4=1,k5=1;
  float t=0,p=0,l=1;
  float timetest = 0;
  Ball ball1= new Ball (-15, 10, 100, 8,#85DB2A);
  Ball ball2= new Ball (15, 10, 100, 8,#85DB2A);
  Ball ball3= new Ball (-25, 25, 114, 8,#3A96E5);
  Ball ball4= new Ball (0, 25, 130, 8,#C444E8);
  Ball ball5= new Ball (25, 25, 130, 8,#3A96E5);
  void create()
  {
    ball1.show();
      ball2.show();ball3.show();ball4.show();ball5.show();
      
      if(time+lapsetime-starttime+timetest>=119227)
      
      {
       ball3.z0=114+k3*2.5*b1;ball5.z0=114+k5*2.5*b1;
       ball4.z0=100+1*k4*b4;
       ball1.x0=-15+0.5*b4*k1;
       ball2.x0=15-0.5*b4*k2;
      
        if(time+lapsetime-starttime+timetest>=122527){k3=0;}
        if(time+lapsetime-starttime+timetest>=123118){k4=0;}
        if(time+lapsetime-starttime+timetest>=123709){k5=0;}
        if(time+lapsetime-starttime+timetest>=124300){k2=0;}
        if(time+lapsetime-starttime+timetest>=124891){k1=0;}
        
        if(time+lapsetime-starttime+timetest>=124891 && time+lapsetime-starttime+timetest<=125111)
        {
          ball1.y0= ball1.y0+l;ball2.y0= ball2.y0+l;ball3.y0= ball3.y0+l;ball4.y0= ball4.y0+l;ball5.y0= ball5.y0+l;  
        }
        if(time+lapsetime-starttime+timetest>=125111 && time+lapsetime-starttime+timetest<=125331)
        {
          ball1.y0= ball1.y0-l;ball2.y0= ball2.y0-l;ball3.y0= ball3.y0-l;ball4.y0= ball4.y0-l;ball5.y0= ball5.y0-l;  
        }
        
        if(time+lapsetime-starttime+timetest>=125331 && time+lapsetime-starttime+timetest<=125458)
        {
          ball1.y0= ball1.y0+l;ball2.y0= ball2.y0+l;ball3.y0= ball3.y0+l;ball4.y0= ball4.y0+l;ball5.y0= ball5.y0+l;  
        }
        if(time+lapsetime-starttime+timetest>=125458 && time+lapsetime-starttime+timetest<=125606)
        {
          ball1.y0= ball1.y0-l;ball2.y0= ball2.y0-l;ball3.y0= ball3.y0-l;ball4.y0= ball4.y0-l;ball5.y0= ball5.y0-l;  
        }
        
      }
      /*
        if(time+lapsetime-starttime+timetest>=6400){ball3.z0=114;}
        if(time+lapsetime-starttime+timetest>=6800){ball3.z0=114;}
        if(time+lapsetime-starttime+timetest>=7200){ball3.z0=114;}
        if(time+lapsetime-starttime+timetest>=7600){ball3.z0=114;}
        if(time+lapsetime-starttime+timetest>=7800){ball3.z0=114;}
      */
      
      //
     // ball2.x0=15-0.5*b5;ball2.y0=10+0.5*b5;ball2.z0=100-0.5*b5;
  }
  
    float mod(int i, float x0, float z0)
    { return sqrt((z_by_ind[i]-z0)*(z_by_ind[i]-z0) + (x_by_ind[i]-x0)*(x_by_ind[i]-x0));
    }
    
    
    //______________________________________
    
    
    float inPix(float y,int i)
    {
    return y*23*768/(10*z_by_ind[i]);
    }
    
    //------------------------------------------------------------------------
    
    public class Ball 
    {
      public int stage,l;
      public color Color;
      public float r, x0, y0, z0;
      public Ball (float xc, float yc, float zc, float rc, color Color) {x0=xc;y0=yc;z0=zc;r=rc;stage=0;l=0;this.Color=Color;} 
      public void show()
      {
    
        for (int i=0; i<wire; i++)
        {
    
          if ( mod(i, x0, z0) < r)
          {
    
            float y= sqrt( r*r - mod(i, x0, z0)*mod(i, x0, z0) ); 
            
            fill(Color);
            rect(i * width / wire, height-(inPix(y,i)+inPix(y0,i)), 5, 2*inPix(y, i));
          }
        }
        b1=12*sin(0.2*p+PI);
        b2=16*sin(0.2*p+PI/2);
        b3=20*sin(0.2*p+3*PI/4);
        b4=24*sin(0.2*p);
        b5=15*sin(0.2*p+PI/2);
        p=p+0.1;
      }
    }

}
