class parabola
{
    float t1=0;
    float k,k1;
    float t=0;
    float l,l1,l2,l3,l4,l5;
    float p=0,p1=0;
    int stage=1;
    float mod(int i, float x0, float z0)
    { return sqrt((z_by_ind[i]-z0)*(z_by_ind[i]-z0) + (x_by_ind[i]-x0)*(x_by_ind[i]-x0));
    }
   
    float inPix(float y,int i)
    {
    return y*23*768/(10*z_by_ind[i]);
    }
   
    void create()
    {
      for(int i=0;i<wire;i++)
     {
       
      if(stage==1 && t<3.46){k=6-t*t;}
        if(stage==1 && t>3.46){stage++;t=0;}
      if(stage==2 && t<3.46) {k=-6+t*t;}
        if(stage==2 && t>3.46){stage=1;t=0;}  
    
     
     
       fill(237,224,81);
       rect( i * width / wire,l+3*height/5-0.1*k*(x_by_ind[i]-0.1*l)*(x_by_ind[i]-0.1*l), 3.5, 5);
    
       fill(240,194,218);
       rect( i * width / wire,l1+3*height/5-0.1*k*(x_by_ind[i]-0.1*l1)*(x_by_ind[i]-0.1*l1), 3.5, 5);
    
       fill(0,255,0);
       rect( i * width / wire,-l2+3*height/5+0.1*k*(x_by_ind[i]-0.1*l2)*(x_by_ind[i]-0.1*l2), 3.5, 5);
    
       fill(39,240,235);
       rect( i * width / wire,l3+3*height/5-0.1*k*(x_by_ind[i]-0.1*l3)*(x_by_ind[i]-0.1*l3), 3.5, 5);
      
       fill(225,81,182);
       rect( i * width / wire,-l4+3*height/5+0.1*k*(x_by_ind[i]-0.1*l4)*(x_by_ind[i]-0.1*l4), 3.5, 5);
       
     //  fill(255);
     //  rect( i * width / wire,l5+3*height/5-0.1*k*(x_by_ind[i]-0.1*l5)*(x_by_ind[i]-0.1*l5), 3.5, 5);
     }
    t1=t1+0.04;
    t=t+0.04;p=p+0.02;p1=p1+0.02;
    l=80*sin(4*p);
    l1=120*sin(4*p+PI);
    l2=160*sin(4*p+PI/2);
    l3=200*sin(4*p+3*PI/4);
    l4=240*sin(4*p);
    l5=300*sin(4*p+PI/2);
    
    
    }
}
