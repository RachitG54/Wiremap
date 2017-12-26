class crazzyfrog3
{
     spotlight light1 = new spotlight(0,(map_length/aspectrat)/2-10,depth-depth_levels*depth_unit/2,2);
   spotlight light2 = new spotlight(0,(map_length/aspectrat)/2-10,depth-depth_levels*depth_unit/2,2);
   spotlight[] lights = new spotlight[7];
   boolean[] beat1 = new boolean[7];
   boolean[] beat2 = new boolean[7];
   float[] speed1 = new float[7];
   int no;
   float timetest = 32611; 
   crazzyfrog3()
   {
     for(int i=0;i<7;i++)
     {
       beat1[i]=beat2[i]=true;
       speed1[i] =  0.6;
     }
     no = ((int)time)%7;
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
    else if((time>starttime+timetest+72237-lapsetime)&&(time<starttime+timetest+78327-lapsetime))
    {
      for(int i=0;i<7;i++)
      {
        if(beat1[i])
        {lights[i] = new spotlight(random(map_length*2.0/3.0)-map_length/3.0,5+random(map_length/(aspectrat*2)),depth-7-random(depth_levels*depth_unit/1.4),7);beat1[i]=false;beat2[i] = true;}
        
       if(i%2==0){lights[i].colred =255;lights[i].colgreen =0;lights[i].colblue =0;}
       else{lights[i].colblue =255;lights[i].colred =0;lights[i].colgreen =0;}
        lights[i].create();
         float z = lights[i].centrez - depth + depth_levels*depth_unit/2;
         float x = lights[i].centrex;
         float mag = sqrt(sq(x)+sq(z));
         float theta = speed1[i]/mag;
         float temp;
         temp = x*cos(theta)+z*sin(theta);
         z = -x*sin(theta)+z*cos(theta);
         x=temp; lights[i].centrez = z+depth - depth_levels*depth_unit/2;lights[i].centrex = x;
         
      }
         
      
  
    }
    else if((time>starttime+timetest+78327-lapsetime)&&(time<starttime+timetest+79196-lapsetime))//77263,78327,78688,78765
    {
       
      
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

}
