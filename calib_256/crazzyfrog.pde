class crazzyfrog
{
  spotlight light1 = new spotlight(0,(map_length/aspectrat)/2-10,depth-depth_levels*depth_unit/2,2);
   spotlight light2 = new spotlight(0,(map_length/aspectrat)/2-10,depth-depth_levels*depth_unit/2,2);
   spotlight[] lights = new spotlight[7];
   boolean[] beat1 = new boolean[7];
   boolean[] beat2 = new boolean[7];
   float[] speed1 = new float[7];
   int no;
   float timetest = 32611; 
   crazzyfrog()
   {
     for(int i=0;i<7;i++)
     {
       beat1[i]=beat2[i]=true;
       speed1[i] =  0.3+random(0.2);
     }
   }
  void create()
  {
    
    if((time>starttime+timetest+70413-lapsetime)&&(time<starttime+timetest+72237-lapsetime))
    {
      float speedlight = 0.7;
      light1.radius = light1.radius+speedlight;
      light1.create();
       if((time>starttime+timetest+71611-lapsetime)&&(time<starttime+timetest+72237-lapsetime))
       {
        float speedlight2 = 1;
        light2.radius = light2.radius+speedlight2;
        light2.colblue=255;light2.colred=0;light2.colgreen=0;
        light2.create();
        //println("Yeah");
       }
    }
    else if((time>starttime+timetest+72237-lapsetime)&&(time<starttime+timetest+72677-lapsetime))
    {
      
      for(int i=0;i<wire;i++)
      {
     
         fill(245,222,7,50);
      rect(i*width/wire,0,string_pix_count,height);
      }
      for(int i=0;i<7;i++)
      {
        
        if(beat1[i])
        {lights[i] = new spotlight(random(map_length*2.0/3.0)-map_length/3.0,5+random(map_length/(aspectrat*2)),depth-7-random(depth_levels*depth_unit/1.4),11);beat1[i]=false;beat2[i] = true;}
        
       if(i%2==0){lights[i].colred =0;lights[i].colgreen =255;lights[i].colblue =0;}
       else{lights[i].colblue =255;lights[i].colred =0;lights[i].colgreen =0;}
        lights[i].create();
      }
      
      if(no%2==0)
      lights[no].centrey = lights[no].centrey+speed1[no];
      else
      lights[no].centrey = lights[no].centrey-speed1[no];
  
    }
    else if((time>starttime+timetest+72677-lapsetime)&&(time<starttime+timetest+72886-lapsetime))
    {
      
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
       
      for(int i=0;i<wire;i++)
      {
     fill(245,222,7,50);
         rect(i*width/wire,0,string_pix_count,height);
      }
        if((time>starttime+timetest+77263-lapsetime)&&(time<starttime+timetest+78327-lapsetime))
        {
            frustrate1(); 
        }
      for(int i=0;i<7;i++)
      {
        
        if((time>starttime+timetest+78327-lapsetime)&&(time<starttime+timetest+78538-lapsetime))
        {
           lights[i].centrey = lights[i].centrey + 1.4*speed1[i];         
        }
        else if((time>starttime+timetest+78538-lapsetime)&&(time<starttime+timetest+78758-lapsetime))
        {
           lights[i].centrey = lights[i].centrey - speed1[i];         
        }
        else if((time>starttime+timetest+78758-lapsetime)&&(time<starttime+timetest+79000-lapsetime))
        {
           lights[i].centrey = lights[i].centrey + 1.4*speed1[i];         
        }
        else if((time>starttime+timetest+79000-lapsetime)&&(time<starttime+timetest+79196-lapsetime))
        {
           lights[i].centrey = lights[i].centrey - speed1[i];         
        }
        /* if((time>starttime+timetest+78327-lapsetime)&&(time<starttime+timetest+78543-lapsetime))
        {
           lights[i].centrey = lights[i].centrey + 1.4*speed1[i];         
        }
        else if((time>starttime+timetest+78543-lapsetime)&&(time<starttime+timetest+78759-lapsetime))
        {
           lights[i].centrey = lights[i].centrey - speed1[i];         
        }
        else if((time>starttime+timetest+78759-lapsetime)&&(time<starttime+timetest+78975-lapsetime))
        {
           lights[i].centrey = lights[i].centrey + 1.4*speed1[i];         
        }
        else if((time>starttime+timetest+78975-lapsetime)&&(time<starttime+timetest+79196-lapsetime))
        {
           lights[i].centrey = lights[i].centrey - speed1[i];         
        }*/
        lights[i].create();
      }
    }
  }
  void frustrate1()
  {
    for(int i=0;i<wire;i++)
      {
     fill(245,222,7,50);
         rect(i*width/wire,0,string_pix_count,height);
      }
      for(int i=0;i<7;i++)
      {
       
        if(beat1[i])
        {no = ((int)time)%7;beat1[i]=false;beat2[i] = true;}
        
        lights[i].create();
      }
      
      if(no%2==0)
      lights[no].centrey = lights[no].centrey+speed1[no];
      else
      lights[no].centrey = lights[no].centrey-speed1[no];
  }
  void frustrate2()
  {
      for(int i=0;i<wire;i++)
      {
         fill(245,222,7,50);
         rect(i*width/wire,0,string_pix_count,height);
      }
      for(int i=0;i<7;i++)
      {
        
        if(beat2[i])
        {no = ((int)time)%7;beat2[i]=false;beat1[i] = true;}
        
        lights[i].create();
      }
      
      if(no%2==0)
      lights[no].centrey = lights[no].centrey+speed1[no];
      else
      lights[no].centrey = lights[no].centrey-speed1[no];
  }
}
