class pingpong2D
{
  paddle P1 = new paddle();
  PVector playerhandle = new PVector(2,4);
  paddle P2 = new paddle();
  ball pingpong = new ball();
  PVector speed= new PVector();
  PVector delta = new PVector(1,1,1);
  int leftscore=0;
  int rightscore=0;
  boolean gameover= false, down = false, up = false, w = false, s = false;
  boolean left,right;
  void initialize(PVector handle,PVector spd)
  {
    playerhandle.x = handle.x; playerhandle.y = handle.y; playerhandle.z = handle.z;
    speed.x = spd.x;
    speed.y = spd.y;
    speed.z = spd.z;
    pingpong.initialize(0,(map_length/aspectrat)/2-1.2,depth - (depth_unit*depth_levels)/2,2.4);
    PVector v1,v2,v3;
      v1 = new PVector();v2 = new PVector();v3 = new PVector();
      v1.x=7;v1.y=(map_length/aspectrat)/2-(playerhandle.y/2);
      v2.x=v1.x+playerhandle.x;
      v2.y = v1.y;
      v3.x=v1.x;v3.y = v1.y+playerhandle.y;
        P1.setpaddle(v1,v2,v3);
       
      v1.x = map_length-playerhandle.x-7;
      v2.x = map_length-7;
      v3.x = v1.x;
      P2.setpaddle(v1,v2,v3); 
  }
  void create()
  {
    noStroke();
  if (loaded == false) 
  {
    loader();
    loaded = true;
  fill(0);
  rect(0,0,width,height);
  }
  fill(0);
  rect(0,0,width,height);
    
   if(gameover==false)
    {
       
      for(int i=(wire/2-1);i<=(wire/2+1);i++)
      {
        float y_top_proj = map_length/aspectrat;                      // compensate for projection morphing IN INCHES
        float y_bot_proj = 0;
        float y_height_proj = y_top_proj - y_bot_proj;
        float left1 = i * (width) / wire;
        float top1 = (height/ppi - y_top_proj) * ppi;
        float wide1 = string_pix_count;
        float tall1 = y_height_proj*ppi;
        fill(255);
        rect(left1, top1, string_pix_count, tall1);
      }
      moveball();
      bounceball();
      if (down==true)
      {
        P2.movedown();
      }
      if (up==true)
      {
        P2.moveup();
      }
      if (w==true)
      {
        P1.moveup();
      }
      if (s==true)
      {
        P1.movedown();
      }
      P1.create();
      P2.create();
      pingpong.create();
      if ((pingpong.centrex+pingpong.radius+map_length/2)<P1.player.leftbottom.x)
    {
      gameover=true;
      rightscore++;
    }
    if (pingpong.centrex-pingpong.radius+map_length/2>P2.player.sidea.x)
    {
      gameover=true;
      leftscore++;
    }
   }
  }
  void moveball()
  {
    pingpong.centrex = pingpong.centrex+delta.x*speed.x;
    pingpong.centrey = pingpong.centrey+delta.y*speed.y;
    pingpong.centrez = pingpong.centrez+speed.z;
  }
  void bounceball()
  {
     if (((pingpong.centrey+pingpong.radius)>(24))||((pingpong.centrey-pingpong.radius<0)))
    {
      delta.y = -delta.y;
    }
    if(((pingpong.centrex-pingpong.radius+map_length/2)-P1.player.sidea.x)<0.02)
    {
      if((pingpong.centrey<P1.player.sideb.y)&&(pingpong.centrey>P1.player.leftbottom.y))
      delta.x = -delta.x;
    }
    if(((pingpong.centrex+pingpong.radius+map_length/2-P2.player.leftbottom.x))>-0.02)
    {
      if((pingpong.centrey<P2.player.sideb.y)&&(pingpong.centrey>P2.player.leftbottom.y))
      delta.x = -delta.x;
    }
  }
  void keypressed()
{
  if (keyCode == UP)
  {
    up = true;
  }
  if (keyCode == DOWN)
  {
    down = true;
  }
  if (key == 'w')
  {
    w=true;
  }
  if (key == 's' )
  {
    s=true;
  }
}
void keyreleased()
{
  if (keyCode == UP)
  {
   up = false;
  }
  if (keyCode==DOWN)
  {
    down = false;
  }
  if (key=='w')
  {
    w=false;
  }
  if (key=='s')
  {
    s=false;
  }
}
}
