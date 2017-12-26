class mridul
{
  
    

      float heightMax=20;
      float Xmax=32;
      float Ymax=23;
      float Xmid=25;
      float Zmid=25;
      float halfHeight=24;
      float delta=0.01;
    float testtime = 32660;
    float opacityspeed=0.1;
    float opacity = 0;
    float testtime2 = 0;//-79695;
    void create() {
    
     if((time>starttime+60000-lapsetime)&&(time<starttime+75320-lapsetime))
       {
         opacity = opacity+opacityspeed;
         if(opacity>30)opacity = 30;
         for(int i = 0;i<wire;i++)
         {
           
           fill(198,201,206,opacity);
         rect(i*width/wire,0,string_pix_count,height);
         //println(wire*width/wire);
         //println(wire*(width/wire));
         }
           switch(gh)
          { case 0:showPlane(0.1);
            break;
            case 1:changePlane(0.1);
            break;
            case 2:rotatingPlane2();
        
          }        
          
       }
     else if((time>starttime+testtime2+81840-lapsetime)&&(time<starttime+testtime2+91940-lapsetime))
     {
       playPulseMusic();
     }
     else if((time>starttime+133478-lapsetime)&&(time<starttime+158590-lapsetime))
     {
       playInfinity();
     }
     else if((time>starttime+133478-lapsetime)&&(time<starttime+145450-lapsetime))
     {
      /* switch(gr)
      {
        case 0:makeOverLap();
        break;
        case 1:killOverLap();
        break;      
      }*/;
     }
     
      //playPulse(12,0.02);
     //killOverLap(); 
    //makeOverLap();
   //bandSine();
   //rotatingPlane1();
  //rotatingPlane2();
 //showPlane(0.5);
    //changePlane(0.01);
  //shrink();
    /*switch(gh)
      { case 0:showPlane(0.1);
        break;
        case 1:changePlane(0.01);
        break;
        case 2:rotatingPlane2();
    
      }*/
      /*switch(gr)
      {
        case 0:makeOverLap();
        break;
        case 1:killOverLap();
        break;
      
      
      }*/
       
    }
      float A=10.62,k1=0.043;    
      float red=68,green=255,blue=113;
      //purple->(68,159,232)->(68,68,232)->(135,68,232)
      void playInfinity()
      {
        
        for(int i=0;i<wire;i++)
        {
         y=A*sin(k1*dist(0,120,i)+t);
          
          fill(255);
          rect(i*width/wire,height-inPix(24,i)-inPix(y+1,i),3,inPix(1,i));
          
          fill(red,green,blue);
          rect(i*width/wire,height-inPix(24,i)-inPix(y,i),3,inPix(3,i));
          
          fill(255);
          rect(i*width/wire,height-inPix(24,i)-inPix(y-3,i),3,inPix(1,i));
        }
        t+=0.1;
        A+=0.01;
        k1-=0.0001;
        //println(k+""+A);
        if(blue<232)
        {blue+=0.3;}
        if(green>68)
        {green=green-0.3;}
        if(green<=68&&red>=68)
        red+=0.3;
        
      
      }
    int gr=0;
    float ch=0.1;
    void playPulseMusic()
    {
     if((time>starttime+testtime+49180-lapsetime)&&(time<starttime+testtime+49266-lapsetime))
        {
          playPulse(2,ch);
        }
        else if((time>starttime+testtime+50178-lapsetime)&&(time<starttime+testtime+50274-lapsetime))
        {
          playPulse(3,ch);
        }
        else if((time>starttime+testtime+51153-lapsetime)&&(time<starttime+testtime+51237-lapsetime))
        {
          playPulse(4,ch);
        }
        else if((time>starttime+testtime+52149-lapsetime)&&(time<starttime+testtime+52221-lapsetime))
        {
          playPulse(5,ch);
        }
        else if((time>starttime+testtime+53126-lapsetime)&&(time<starttime+testtime+53215-lapsetime))
        {
          playPulse(6,ch);
        }
        else if((time>starttime+testtime+54129-lapsetime)&&(time<starttime+testtime+54221-lapsetime))
        {
         playPulse(7,ch);
        }
        else if((time>starttime+testtime+55100-lapsetime)&&(time<starttime+testtime+55175-lapsetime))
        {
          playPulse(8,ch);
        }
        else if((time>starttime+testtime+56099-lapsetime)&&(time<starttime+testtime+56183-lapsetime))
        {
          playPulse(9,ch);
        }
        else if((time>starttime+testtime+57078-lapsetime)&&(time<starttime+testtime+57154-lapsetime))
        {
          playPulse(10,ch);
        }
        else if((time>starttime+testtime+58076-lapsetime)&&(time<starttime+testtime+58150-lapsetime))
        {
         playPulse(11,ch);
        }
    }
    int gh=0;
    float  inPix(float y,int i)
    {
    return ppi* y*depth/z_by_ind[i];
    }
    
    float dist(float x,float z,int i)
    {
    return sqrt(sq(x-x_by_ind[i])+sq(z-z_by_ind[i]));
    }
    
    float t=0;
      float y;
      float k=0.1;
      float pie=3.1415;
      float dt=1;
      float xmin=-45;
    
    float lapAmp=0;
    float lapdt=0.01;
    
    void makeOverLap()
    {
      
    overLap(lapAmp);
    if(lapAmp<=12)
    lapAmp+=lapdt;
    else
    gr=1;
    
    
    }
    
    float maxAmp=12;
    float inner=0;
    float outer=20;
    float xMid=0;
    float zMid=120;
    
    void killOverLap()
    {
    overLap(maxAmp);
    if(maxAmp>=0)
    maxAmp-=lapdt;
    }
    
    void shrink()
    {
    for(int i=0;i<wire;i++)
      {
      if(dist(xMid,zMid,i)>inner&&dist(xMid,zMid,i)<outer);
        {
          fill(255);
          rect(i*width/wire,height-inPix(halfHeight,i),3,inPix(1,i));
        }
      }
      inner+=lapdt;
      outer-=lapdt;
    }
    
    
    void overLap(float A)
    {
      for(int i=0;i<wire;i++)
      {
          y1=A*sin(k*dist(0,120,i)+t);                    //manipulating inputs of dist and t,k etc
          y2=A*sin(k/2*dist(30,120,i)+3*t);
          fill(255);
          y=max(y1,y2);
          
          rect(i*width/wire,height-inPix(y,i)-inPix(halfHeight,i),3,inPix(1,i));
          
          
      }
    t+=0.01;
    
    if(t==1)
     gr=2;
    }
    
    class pulse
    {
      float xmin;
      public pulse()
      {xmin=-45;}
      public void playPulse(float A)
        {
        for (int i=0; i<wire; i++)
        {
       
          y=-A*sin(k*x_by_ind[i]+t);
               //println(inPix(y,i));
          fill(255,0,0);
          if(x_by_ind[i]>xmin&&x_by_ind[i]<xmin+2*pie/k)
          rect(i*width/wire, height-inPix(y,i)-inPix(halfHeight,i), 3,inPix(1,i));
          else
          rect(i*width/wire, height-inPix(A,i)-inPix(halfHeight,i), 3,inPix(1,i));
        }
        t-=dt;
        xmin+=dt/k;
        }
    
    }
    void playPulse(float A,float dt)
    {
      for (int i=0; i<wire; i++)
      {
     
        y=-A*sin(k*x_by_ind[i]+t);
             //println(inPix(y,i));
        fill(255,0,0);
        if(x_by_ind[i]>xmin&&x_by_ind[i]<xmin+2*pie/k)
        rect(i*width/wire, height-inPix(y,i)-inPix(halfHeight,i), 3,inPix(1,i));
        else
        rect(i*width/wire, height+inPix(A,i)-inPix(halfHeight,i), 3,inPix(1,i));
      }
      t-=dt;
      xmin+=dt/k;
      if(xmin>=45)
      {xmin=-45;t=0;}
      
    }
    
    float y1,y2;
    
    
    float r=25;
    float R=55;
    float l,m;
    float x0=0;
    float z0=120;
    float theta;
    int n=4;
    void bandSine()
    {
    for(int i=0;i<wire;i++)
      {
        if(dist(x0,z0,i)>r&&dist(0,120,i)<R)
        {
          l=x_by_ind[i]-x0;
          m=z_by_ind[i]-z0;
          l=l/sqrt(sq(l)+sq(m));
          m=m/sqrt(sq(l)+sq(m));
          
          theta=acos(l)*180/3.14;//change to whatever gives the whole theta
       // println(theta);
         y=12*sin(n*theta+t);
         fill(255);
        rect(i*width/wire,height/2-inPix(y,i),3,inPix(1,i));
        }
        t+=0.0001;
      }
      
    }
    
    ////-------------------The plane class---------------------------//
    
    class Bullet
     {
       public float x;
       public float z;
       public  float y;
       public float r;
     
       public float l;
       public float m;
       public float n;
     
       private float hillX;
       private float hillZ;
       private float hillA;
       private float hillK;
     
     
       private float p;
       private float hillH;
       public Bullet(float x,float z,float y,float r)
       {
       this.x=x;
       this.z=z;
       this.y=y;
       this.r=r;
       l=0;
       m=0;
       n=1;
       }
     
     
       public void showHill(float x,float z,float a,float k)
       {
       for(int i=0;i<wire;i++)
         {
         if(dist(x,z,i)<3.14/k)
           {
              hillH=a*cos(k*dist(x,z,i));
    
               fill(136,217,224);
               rect(i*width/wire,height-inPix(hillH,i)+inPix(0.5,i),5,inPix(hillH,i));
                          fill(255);
               rect(i*width/wire,height-inPix(hillH,i),5,inPix(0.5,i));
           }
         }
       }
      
         public void setXYZ(float x,float z,float y)
       {
       this.x=x;
       this.z=z;
       this.y=y;
     
       }
       //write code for getters and setters for phiX,phiY,phiZ
      public void moveX(float dx)
        {
        x+=dx;
        }
       public void moveZ(float dz)
        {
              z+=dz;
        }
     
         public void moveY(float dy)
        {
        y+=dy;
        }
     
        public void setD(float l,float m,float n)
        {
        this.l=l;
        this.m=m;
        this.n=n;
     
     
        }
     
        public void moveD(float k)
        {
        x+=l*k;
        z+=m*k;
        y+=n*k;
     
     
     
        }
     
        public void reflect()
        {
        if(x<-16||x>16)
        l=-l;
        if(z<23||z>43)
        m=-m;
        if(y<0||y>heightMax)
        n=-n;
        }
        public void showSurface(float r)
        {
        for(int i=0;i<wire;i++)
          {
          p=-(l*(x_by_ind[i]-x)+m*(z_by_ind[i]-z))/n+y;
          if(x_by_ind[i]<-10)
          fill(255,239,54);
          else if(x_by_ind[i]<10)
          fill(240,122,12);
          else
          fill(240,69,12);
       
          if(dist(x,z,i)<r)
          rect(i*width/wire,height-inPix(p,i),3,inPix(1/n,i));
          }
     
        }
        float y0;
     
       public void showBullet()
       {
       for(int i=0;i<wire;i++)
         {
         if(dist(x,z,i)<r)
           {
             //println("works");
           y0=sqrt(r*r-dist(x,z,i)*dist(x,z,i))  ;
           fill(255,100,0);
           rect(i*width/wire,height-(inPix(y0,i)+inPix(y,i)),5,2*inPix(y0,i));
           }
         }
     
       }
     
       public boolean wallCollide()
       {
       if(x>-16&&x<16)
         if(z>23&&z<43)
           if(y>0&&y<heightMax)
           return false;
        
           return true;
       }
       //---------------------------------------------------------------------//
    
     }
     
     
     float dl=0.1;
     float dm=0.01;
    
    void rotatingPlane1()
    {
    for(int i=0;i<wire;i++)
      {
        plane1.showSurface(10);
        plane2.showSurface(20);
        
      if(dist(x0,z0,i)>20)
        {
          fill(0);
          rect(i*width/wire,0,3,height);
          
          
        }
      
      }
      plane2.l+=dl;
      plane2.m+=dm;
      
      if(plane2.l<=-1||plane2.l>1)
      dl=-dl;
      
      if(plane2.m<=-1||plane2.m>1)
      dm=-dm;
      
      
       plane1.l+=dl;
      plane1.m+=dm;
      
      if(plane1.l<=-1||plane1.l>1)
      dl=-dl;
      
      if(plane1.m<=-1||plane1.m>1)
      dm=-dm;
      
    
    }
    
    float thea=0;
    
    
     Bullet plane1=new Bullet(0,120,40,3);
      Bullet plane2=new Bullet(0,120,20,3);
      
     Bullet plane3=new Bullet(-24,120,40,3);
      Bullet plane4=new Bullet(-24,120,20,3);
      
      
     Bullet plane5=new Bullet(24,120,40,3);
      Bullet plane6=new Bullet(24,120,20,3);
      
      float rad=30;
      float radmin=10;
      void showPlane(float dt)
      {
        plane1.showSurface(rad);
         plane2.showSurface(rad);
          plane3.showSurface(rad);
          
           plane4.showSurface(rad);
         plane5.showSurface(rad);
          plane6.showSurface(rad);
          if(rad>=radmin)
          rad-=dt;
          else 
          gh=1;
          
      
      }
    
    
    void rotatingPlane2()
    {
      
    
      
        plane1.showSurface(radmin);
        plane2.showSurface(radmin);
         plane3.showSurface(radmin);
        plane4.showSurface(radmin);
         plane5.showSurface(radmin);
        plane6.showSurface(radmin);
    
      
      
      
      
      thea+=0.2;
    if(thea<6)
  {  
    plane1.l=cos(thea);
    plane1.m=sin(thea);
    plane2.l=sin(-thea);
    plane2.m=cos(-thea);
    plane3.l=cos(thea);
    plane3.m=sin(thea);
    plane4.l=sin(-thea);
    plane4.m=cos(-thea);
    plane5.l=cos(thea);
    plane5.m=sin(thea);
    plane6.l=sin(-thea);
    plane6.m=cos(-thea);
  }
 else if(thea>=6&&thea<12)
  {
     plane1.l=cos(-thea);
    plane1.m=sin(-thea);
    plane2.l=sin(thea);
    plane2.m=cos(thea);
    plane3.l=cos(-thea);
    plane3.m=sin(-thea);
    plane4.l=sin(thea);
    plane4.m=cos(thea);
    plane5.l=cos(-thea);
    plane5.m=sin(-thea);
    plane6.l=sin(thea);
    plane6.m=cos(thea);
  }
  else
  {
    plane1.l=cos(-thea);
    plane1.m=sin(thea);
    plane2.l=sin(-thea);
    plane2.m=cos(thea);
    plane3.l=cos(thea);
    plane3.m=sin(-thea);
    plane4.l=sin(-thea);
    plane4.m=cos(thea);
    plane5.l=cos(-thea);
    plane5.m=sin(thea);
    plane6.l=sin(-thea);
    plane6.m=cos(thea);
  }
  



} 
    
    
    
    float tr=0;
    void changePlane(float dt)
    {
    plane1.setD(tr,0,1);
    plane2.setD(0,tr,1);
    plane3.setD(tr,0,1);
    plane4.setD(0,tr,1);
    plane5.setD(tr,0,1);
    plane6.setD(0,tr,1);
    if(tr<=1)
    tr+=dt;
    else {gh=2;tr=1;}
    
        plane1.showSurface(radmin);
        plane2.showSurface(radmin);
         plane3.showSurface(radmin);
        plane4.showSurface(radmin);
         plane5.showSurface(radmin);
        plane6.showSurface(radmin);
    
    
    
    
    
    }   
}
