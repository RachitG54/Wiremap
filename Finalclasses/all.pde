class all
{
    boolean test=false;  
float w=0.5;
float t=0;
float k=0.5;
float y;
int count=0;
 int size;
 int R=255,G=255,B=255;  
float y0=2; 
 void makeSphere(float x0,float y0,float z0,float r)//SPHEre>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.
  {
  
    
  float y,y_in_px,y0_in_px;
  
  for(int i=0;i<wire;i++)
    {
    if((dist(x0,z0,i))<=r)
      {
        test=true;  
             
        y=sqrt(r*r-((x0-x_by_ind[i])*(x0-x_by_ind[i])+(z0-z_by_ind[i])*(z0-z_by_ind[i])));
         
        //System.out.println(y_in_px);
        fill(255);
        rect(i*width/wire,height-(inPix(y,i)+inPix(y0,i)),2,2*inPix(y,i));
      }
    }
  
  
  }
     void drawSine(float x0,float y0,float z0, int A,float d)
  {
  for(int i=0;i<wire;i++)
      {
       y=pow(10,-0.05*dist(x0,z0,i))*A*sin(w*t+k*(dist(x0,z0,i))) ;
      
 
       //System.out.println(y0);
       
       
     fill(0,255,0);
     rect(i*width/wire,height-(inPix(y,i)+inPix(y0,i)),5,50);  
      }
      
      incrementTime(d);
     
  
  }
  void drawSineMouse(float x0,float z0,float y0,int A,float d)
  {  for(int i=0;i<wire;i++)
        {
        y=A*sin(w*t+k*(dist(x0,z0,i)));
        System.out.println(y);
     fill(255,0,0);
     rect(i*width/wire,height-(inPix(y,i)+inPix(y0,i)),2,10);  
        }
        if(mousePressed)
        {
       incrementTime(d); 
        }
  
  }
   float  inPix(float y,int i)
  {
  y=y*23*768/(10*sqrt(x_by_ind[i]*x_by_ind[i]+z_by_ind[i]*z_by_ind[i]));
  return y;
  }
  /////////////////////////////////
  float dist(float x0, float z0,int i)
  {
  return sqrt((x0-x_by_ind[i])*(x0-x_by_ind[i])+(z0-z_by_ind[i])*(z0-z_by_ind[i]));
  }
   float xMouse()
  {
  return (mouseX / float(width)) * (map_length) - (map_length / 2);

  }
  float zMouse()
  {
  return ((float(height)-mouseY)/float(height))*20+23;
  }
  ///////////////////////////////
  void drawCube(float x0,float y0,float z0,float s)
  {
  for(int i=0;i<wire;i++)
    {
    if(x_by_ind[i]>=x0&&x_by_ind[i]<=x0+s)
     {
     if(z_by_ind[i]>=z0&&z_by_ind[i]<=z0+s)
       {
       float h=s;
        fill(0,66,99);
         rect(i*width/wire,height-(inPix(h/2,i)+inPix(y0,i)),2,inPix(h,i));
       
       }
     }
    }
  }
  ////////////
  void incrementTime(float d)
  {
  t=t+d;
  
  }
 
 void paintBall(float y0)
{
if(mousePressed)
  {
  for(int i=0;i<wire;i++)
    {
    if(dist(xMouse(),zMouse(),i)<size)
      {y=sqrt(size*size-dist(xMouse(),zMouse(),i)*dist(xMouse(),zMouse(),i));
      fill(255);
       rect(i*width/wire,height-(inPix(y,i)+inPix(y0,i)),2,2*inPix(y,i));
      
      }
      if(mouseButton==RIGHT)
      {
      y0=y0+0.5;
      }
    }
  }
}

       void paintBall()
{
if(mousePressed)
  {
  for(int i=0;i<wire;i++)
    {
    if(dist(xMouse(),zMouse(),i)<size)
      {y=sqrt(size*size-dist(xMouse(),zMouse(),i)*dist(xMouse(),zMouse(),i));
      fill(R,G,B);
       rect(i*width/wire,height-(inPix(y,i)+inPix(y0,i)),2,2*inPix(y,i));
      
      }
      if(mouseButton==RIGHT)
      {
      y0=y0+0.005;
      if(y0>inPix(y0,83))
      y0=inPix(y0,83);
      }
      if(mouseButton==CENTER)
      {
      y0-=0.005;
      if(y0<0)       
      y0=0;
      }
    }
  }
}
  

 public void displayMap()
  {
   for(int i=0;i<wire;i++)
   {
     if(z_by_ind[i]-23.0<6.66)
     {
       test=true;
     fill(255,0,0);
     rect(i*width/wire,0,2,height);
     }
     else if(z_by_ind[i]-23.0<13.22)
     {
       fill(0,255,0);
       rect(i*width/wire,0,2,height);
       
     }
     
     else    
     {
     fill(0,0,255);                                                //calib
     rect(i*width/wire,0,2,height);
     }
   }
  }  
  void create()
  {
      fill(0);
      rect(0,0,width,height);
      noStroke();
      loader();
      drawSine(xMouse(),6,zMouse(),5,0.3);
      /*if(mousePressed)
System.out.println(zMouse());*/
  }
  
 void keypressed()
  {
  if(key=='w')
    {
    R=255;
    G=255;
    B=255;
    }
   else if(key=='r')
    {
    R=255;
    G=0;
    B=0;
    } 
    else if(key=='b')
    {
    R=0;
    G=0;
    B=255;
    }
    else if(key=='d')
    {
    R=0;
    G=0;
    B=0;
    }
    else if(key=='c')
    {
    fill(0);
    rect(0,0,width,height);
    }

  }   
 
  
}
