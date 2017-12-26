class mario
{
  ball player = new ball();;
  float widthplatform=3;
  int noofplatforms = 4;
  parallelogram[] platforms = new parallelogram[noofplatforms];
  float movex=0.15;
  float movey=0.3;
  int dir = 1;
  int nooftimes=0;
  float maxjump=4;
  float spacingplatform=6.3;
  float platformheight=(map_length/aspectrat)/2-6;
  boolean keyup,keydown,keyleft,keyright;
  float startz = 23;
  float widthz = 20;
  boolean gameover = false; 
   mario()
  {
    player.initialize(5-map_length/2.0,platformheight+3,depth-(depth_levels*depth_unit)/2,3);
  }
  void initialize()
  {
     PVector v1,v2,v3,v4;
    v1 = new PVector();v2 = new PVector();v3 = new PVector();v4 = new PVector();
    v1.set(4,platformheight-widthplatform,0);
    v2.set(4+widthplatform,platformheight-widthplatform,0);
    v3.set(4,platformheight,0);
    for(int i =0;i<noofplatforms;i++)
    {platforms[i] = new parallelogram();
     platforms[i].setpolygon(v1,v2,v3,widthz,startz);
     v1.x = v1.x+spacingplatform;v2.x = v2.x+spacingplatform;v3.x = v3.x+spacingplatform;
    }
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
  
  if(!gameover)
  {
  move();
  for(int i =0;i<noofplatforms;i++)
   {platforms[i].create();}
    player.create();
  }
  }
  void keypressed() {
  if (key == CODED) {
    if (keyCode == UP) keyup = true;
    if (keyCode == DOWN) keydown = true;
    if (keyCode == LEFT) keyleft = true;
    if (keyCode == RIGHT) keyright = true;
  }
}
  
void keyreleased() {
  if (key == CODED) {
    if (keyCode == UP)
   { keyup = false;nooftimes--;}
    if (keyCode == DOWN) keydown = false;
    if (keyCode == LEFT) keyleft = false;
    if (keyCode == RIGHT) keyright = false;
  }
}

  void move()
  {
    if(keyright)
    {
      player.centrex = player.centrex+movex;
    }
    
    if(keyleft)
    {
      player.centrex = player.centrex-movex;
    }
    
    if((keyup)&&(nooftimes%2==0))
    {
      
      if(player.centrey>platformheight+maxjump+player.radius)
      {
        keyup=false;
        nooftimes++;
      }
      else
      {
        player.centrey = player.centrey+movey;
      }
    }
    else
    {
      if(player.centrey>platformheight+player.radius)
      {
        player.centrey = player.centrey-movey;
      }
      else
      {
        boolean onplatform = false;
        float check = 4;
        for(int t=0;t<noofplatforms;t++)
        {
          if(((player.centrex+map_length/2)>check)&&((player.centrex+map_length/2)<check+widthplatform))
          {
            onplatform = true;
            break;
          }
          check = check+spacingplatform;
        }
        if(!onplatform)
        {
          player.centrey = player.centrey-movey;
        }
      }
    }
    
   if(player.centrey<0)
   {
        gameover = true;
   }
    player.centrex=(player.centrex +map_length/2.0+ (int)map_length) % (int)map_length-map_length/2.0;
  }
  
}
