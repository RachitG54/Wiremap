class snake
{
  float centrex;
  float centrey;
  float centrez;
  ArrayList <Float> xpos, ypos,zpos;
  int len;
  String dir;
  float snakelength;
  float radius;
  float speed;
   snake(){
    len = 1;
    snakelength = 0.2;
    radius = 2;
    speed = 0.2;
    dir = "right";
    xpos = new ArrayList();
    ypos = new ArrayList();
    zpos = new ArrayList();
    xpos.add( random(map_length) );
    ypos.add( random(map_length/aspectrat) );
    zpos.add(depth - depth_levels*depth_unit+random(depth_levels*depth_unit));
  }
   

  void create()
  {
    for(int j=0;j<len;j++)
      {
    for(int i=0;i<wire;i++)
    {
      
        centrex = xpos.get(j)-map_length/2;centrey = ypos.get(j);centrez = zpos.get(j);
        if((x_by_ind[i]<=centrex+(snakelength/2))&&(x_by_ind[i]>=centrex-(snakelength/2)))
        {
          if((z_by_ind[i]<=centrez+(radius))&&(z_by_ind[i]>=centrez-(radius)))
          {
            float local_hyp = z_by_ind[i]-centrez;
            float y_abs   = sqrt(sq(radius) - sq(local_hyp)); 
            float y_top_coord     = centrey + y_abs;                                          // find the top & bottom coords
            float y_bot_coord     = centrey - y_abs;                                          // 
            float y_top_proj      = y_top_coord * depth / z_by_ind[i];                  // compensate for projection morphing
            float y_bot_proj      = y_bot_coord * depth / z_by_ind[i];
            float y_height_proj   = y_top_proj - y_bot_proj;
              
              
                      /* Top dot
                      ---------------------------------------------------------*/
                      fill(255,0,0);                                   // Fill the globe pixels this color
                      float left1           = i * (width) / wire;
                      float top1            = (height/ppi - y_top_proj) * ppi ;     // ppi = pixel / mm.  These are conversions to & from pixels and mm
                      float wide1           = string_pix_count;
                      float tall1           = y_height_proj * ppi;
                      //if(j==2)println("Why");
                      rect(left1, top1, wide1, tall1);
              
          }
        }
      }
    }
  }
  void move(){
   for(int i = len - 1; i > 0; i = i -1 ){
    xpos.set(i, xpos.get(i - 1));
    ypos.set(i, ypos.get(i - 1)); 
   }
   if(dir == "left"){
     xpos.set(0, xpos.get(0) - speed);
   }
   if(dir == "right"){
     xpos.set(0, xpos.get(0) + speed);
   }
    
   if(dir == "up"){
     ypos.set(0, ypos.get(0) + speed);
   
   }
    
   if(dir == "down"){
     ypos.set(0, ypos.get(0) - speed);
   }
   xpos.set(0, (xpos.get(0) + (int)map_length) % (int)map_length);
   ypos.set(0, (ypos.get(0) + (int)(map_length/aspectrat)) % (int)(map_length/aspectrat));
    
    // check if hit itself and if so cut off the tail
    if( checkHit() == true){
      len = 1;
      println("Yeah");
      float xtemp = xpos.get(0);
      float ytemp = ypos.get(0);
      xpos.clear();
      ypos.clear();
      xpos.add(xtemp);
      ypos.add(ytemp);
    }
  }
  void addLink(){
    xpos.add( xpos.get(len-1)+snakelength);
    ypos.add( ypos.get(len-1)-snakelength);
    zpos.add( zpos.get(len-1));
    len++;
  }
  boolean checkHit(){
    for(int i = 1; i < len; i++){
     if( dist(xpos.get(0), ypos.get(0), xpos.get(i), ypos.get(i)) < snakelength){
       //println(xpos.get(0)+" " + xpos.get(i));
       return false;
     }
    }
    return false;
   }


}
