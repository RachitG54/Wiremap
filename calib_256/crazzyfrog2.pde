class crazzyfrog2
{
  spotlight light1 = new spotlight(0,(map_length/aspectrat)/2-10,depth-depth_levels*depth_unit/2,2);
   spotlight light2 = new spotlight(0,(map_length/aspectrat)/2-10,depth-depth_levels*depth_unit/2,2);
   spotlight[] lights = new spotlight[7];
   boolean[] beat1 = new boolean[7];
   boolean[] beat2 = new boolean[7];
   float[] speed1x = new float[7];
   float[] speed1y = new float[7];
   float[] speed1z = new float[7];
   int [] no2 = new int[7];
   int [] no1= new int[7];
   int no;
   float timetest = 53304; 
   crazzyfrog2()
   {
     for(int i=0;i<7;i++)
     {
       beat1[i]=beat2[i]=true;
       speed1x[i] =  0.1+random(0.2);
       speed1y[i] =  0.1+random(0.2);
       speed1z[i] =  0.01+random(0.2);
     }
     no = ((int)time)%7;
   }
  void create()
  {
    
    
    if((time>starttime+timetest+72237-lapsetime)&&(time<starttime+timetest+72677-lapsetime))
    {
      for(int i=0;i<7;i++)
      {
        if(beat1[i])
        {lights[i] = new spotlight(random(map_length*2.0/3.0)-map_length/3.0,5+random(map_length/(aspectrat*2)),depth-7-random(depth_levels*depth_unit/1.4),7);beat1[i]=false;beat2[i] = true;}
        
       if(i%2==0){lights[i].colred =255;lights[i].colgreen =0;lights[i].colblue =0;}
       else{lights[i].colblue =255;lights[i].colred =0;lights[i].colgreen =0;}
        lights[i].create();
        if(no%2==0)
      lights[i].centrey = lights[i].centrey+speed1y[i];
      else
      lights[i].centrey = lights[i].centrey-speed1y[i];
      if(no1[i]%2==0)
      lights[i].centrex = lights[i].centrex+speed1x[no];
      else
      lights[i].centrex = lights[i].centrex-speed1x[no];
      if(no2[i]%2==0)
      lights[i].centrez = lights[i].centrez+speed1z[no];
      else
      lights[i].centrez = lights[i].centrez-speed1z[no];      
      }
         
      
  
    }
    else if((time>starttime+timetest+72677-lapsetime)&&(time<starttime+timetest+72886-lapsetime))
    {
      //println(time);
      frustrate1();
    }
    else if((time>starttime+timetest+72886-lapsetime)&&(time<starttime+timetest+73009-lapsetime))
    {
      
      frustrate2();
    }
    else if((time>starttime+timetest+73009-lapsetime)&&(time<starttime+timetest+73199-lapsetime))
    {
      
      frustrate1();
    }
    else if((time>starttime+timetest+73199-lapsetime)&&(time<starttime+timetest+73336-lapsetime))
    {
      
      frustrate2();
    }
    else if((time>starttime+timetest+73336-lapsetime)&&(time<starttime+timetest+73519-lapsetime))
    {
      
      frustrate1();
    }
    else if((time>starttime+timetest+73519-lapsetime)&&(time<starttime+timetest+73748-lapsetime))
    {
      
      frustrate2();
    }
    else if((time>starttime+timetest+73748-lapsetime)&&(time<starttime+timetest+73991-lapsetime))
    {
      
      frustrate1();
    }
    else if((time>starttime+timetest+73991-lapsetime)&&(time<starttime+timetest+74414-lapsetime))
    {
      
      frustrate2();
    }
    else if((time>starttime+timetest+74414-lapsetime)&&(time<starttime+timetest+74744-lapsetime))
    {
      
      frustrate1();
    }
    else if((time>starttime+timetest+74744-lapsetime)&&(time<starttime+timetest+74953-lapsetime))
    {
       
      frustrate2();
    }
    else if((time>starttime+timetest+74953-lapsetime)&&(time<starttime+timetest+75069-lapsetime))
    {
      
      frustrate1();
    }
    else if((time>starttime+timetest+75069-lapsetime)&&(time<starttime+timetest+75283-lapsetime))
    {
      frustrate2();
    }
    else if((time>starttime+timetest+75283-lapsetime)&&(time<starttime+timetest+75504-lapsetime))
    {
      
     frustrate1();
    }
    else if((time>starttime+timetest+75504-lapsetime)&&(time<starttime+timetest+75706-lapsetime))
    {
       
      frustrate2();
    }
    else if((time>starttime+timetest+75706-lapsetime)&&(time<starttime+timetest+75928-lapsetime))
    {
      
      frustrate1();
    }
    else if((time>starttime+timetest+75928-lapsetime)&&(time<starttime+timetest+76159-lapsetime))
    {
       
      frustrate2();
    }
    else if((time>starttime+timetest+76159-lapsetime)&&(time<starttime+timetest+76373-lapsetime))
    {
      
      frustrate1();
    }
    else if((time>starttime+timetest+76373-lapsetime)&&(time<starttime+timetest+76489-lapsetime))
    {
       frustrate2();
    }
    else if((time>starttime+timetest+76489-lapsetime)&&(time<starttime+timetest+76703-lapsetime))
    {
      frustrate1();
    }
    else if((time>starttime+timetest+76703-lapsetime)&&(time<starttime+timetest+76818-lapsetime))
    {
       frustrate2();
    }
    else if((time>starttime+timetest+76818-lapsetime)&&(time<starttime+timetest+77025-lapsetime))
    {
      frustrate1();
    }
    else if((time>starttime+timetest+77025-lapsetime)&&(time<starttime+timetest+77263-lapsetime))
    {
      frustrate2();
    }
    else if((time>starttime+timetest+77263-lapsetime)&&(time<starttime+timetest+79196-lapsetime))//77263,78327,78688,78765
    {
       
      frustrate1(); 
       
    }
  }
  void frustrate1()
  {
    
      for(int i=0;i<7;i++)
      {
        lights[i].create();
        if(beat1[i])
        {no = ((int)random(100));no1[i]=((int)random(100));no2[i] = ((int)random(100));beat1[i]=false;beat2[i] = true;}
         if(no%2==0)
      lights[i].centrey = lights[i].centrey+speed1y[i];
      else
      lights[i].centrey = lights[i].centrey-speed1y[i];
      if(no1[i]%2==0)
      lights[i].centrex = lights[i].centrex+speed1x[i];
      else
      lights[i].centrex = lights[i].centrex-speed1x[i];
      if(no2[i]%2==0)
      lights[i].centrez = lights[i].centrez+speed1z[i];
      else
      lights[i].centrez = lights[i].centrez-speed1z[i];  
        
      }
        
      
  }
  void frustrate2()
  {
    
      for(int i=0;i<7;i++)
      {
        if(beat2[i])
        {no1[i] = ((int)random(100));no2[i] = ((int)random(100));no = ((int)random(100));beat2[i]=false;beat1[i] = true;}
        
        lights[i].create();
      
          
      if(no%2==0)
      lights[i].centrey = lights[i].centrey+speed1y[i];
      else
      lights[i].centrey = lights[i].centrey-speed1y[i];
      if(no1[i]%2==0)
      lights[i].centrex = lights[i].centrex+speed1x[i];
      else
      lights[i].centrex = lights[i].centrex-speed1x[i];
      if(no2[i]%2==0)
      lights[i].centrez = lights[i].centrez+speed1z[i];
      else
      lights[i].centrez = lights[i].centrez-speed1z[i];
      }
  }
}
