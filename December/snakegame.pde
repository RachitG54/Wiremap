class snakegame
{
  snake player = new snake();
  //food food1 = new food();
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
    player.move();
    player.create();
    /* if( dist(food1.xpos, food1.ypos, test.player.get(0), test.player.get(0)) < player.snakelength )
    {
    food1.reset();
    player.addLink();
    }*/
    //println(player.len);
    if(player.len==1)
    {
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
       player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
       player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
       player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      player.addLink();
      
       //println(player.xpos.get(0)+" " +player.xpos.get(1)+" " +player.xpos.get(2)+" " +player.xpos.get(3));
      //println(player.ypos.get(0)+" " +player.ypos.get(1)+" " +player.ypos.get(2)+" " +player.ypos.get(3));
    }
    
  }
  void keypressed()
  {
  if(key == CODED){
    if(keyCode == LEFT){
      player.dir = "left";
    }
    if(keyCode == RIGHT){
      player.dir = "right";
    }
    if(keyCode == UP){
      player.dir = "up";
    }
    if(keyCode == DOWN){
      player.dir = "down";
    }
    }
  }
}
