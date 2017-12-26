class crackers
{
  int startwire=60;
  float crackerheight = 0.4;
  float explodeheight = 16;
  float aeheight=explodeheight;
  float ejectionspeed = 0.2;
  float explodespeed = 0.40;
  float fallspeed = 0.04;
  float y_bot_coord = 0;
  float y_top_coord = crackerheight;
  float radius = 0.2;
  float finalradius=5.0;
  float[] y_height_proj2 = new float[wire];
  float particleheight = 0.2; 
  int flashlight = 0;  
  void initialize()
  {
    for(int i = 0;i < wire;i++)
      {
        
               float xcoord = x_by_ind[i];
               if((xcoord >= (x_by_ind[startwire] - finalradius)) && (xcoord <= (x_by_ind[startwire] + finalradius))) 
               {          
                          // if a wire's x coord is close enough to the globe's center
                          float local_hyp = sqrt(sq(xcoord - x_by_ind[startwire]) + sq(z_by_ind[i] - z_by_ind[startwire]));            // find the distance from the wire to the globe's center
                          if(local_hyp <= finalradius) 
                          {
                            float y_abs   = sqrt(sq(finalradius) - sq(local_hyp));                      // find the height of the globe at that point
                            y_height_proj2[i]   = random(y_abs);
                    
                          } 
                 }
        
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
    y_bot_coord = y_bot_coord+ejectionspeed;
    y_top_coord = y_top_coord+ejectionspeed;
    if(y_top_coord<explodeheight)
    {
    float y_top_proj = y_top_coord * depth / z_by_ind[startwire];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord* depth / z_by_ind[startwire];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = startwire * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    
    colorMode(HSB);// sets color mode value 
    fill((int)y_bot_coord, 255,255);//cycles through hue and brightness to expose a greater color palete
    colorMode(RGB);
    rect(left1, top1, string_pix_count, tall1);
    }
   else
    {
      for(int i = 0;i < wire;i++)
      {
           if(radius>finalradius)
           {
               float xcoord = x_by_ind[i];
               if((xcoord >= (x_by_ind[startwire] - radius)) && (xcoord <= (x_by_ind[startwire] + radius))) 
               {          
                          // if a wire's x coord is close enough to the globe's center
                          float local_hyp = sqrt(sq(xcoord - x_by_ind[startwire]) + sq(z_by_ind[i] - z_by_ind[startwire]));            // find the distance from the wire to the globe's center
                          if(local_hyp <= radius) 
                          {
                            float y_abs   = sqrt(sq(radius) - sq(local_hyp));                      // find the height of the globe at that point                                          // find the top & bottom coords
                            float y_bot_coord2    = aeheight ;
                            float y_top_coord2     = y_bot_coord2+particleheight;                            // 
                            float y_top_proj      = y_top_coord2 * depth / z_by_ind[i];                  // compensate for projection morphing
                            float y_bot_proj      = y_bot_coord2 * depth / z_by_ind[i];
                            float y_height_proj = y_top_proj - y_bot_proj;
                            fill(255,155,0);
                                                     // Fill the globe pixels this color
                            float left1           = i * (width) / wire;
                            float top1            = (height/ppi - y_top_proj) * ppi ;     // ppi = pixel / mm.  These are conversions to & from pixels and mm
                            float wide1           = string_pix_count;
                            float tall1           = y_height_proj * ppi;
                            rect(left1, top1, wide1, tall1);
                            y_bot_coord2 = y_bot_coord2 + y_height_proj2[i];
                            y_top_coord2     = y_bot_coord2+particleheight;                            // 
                            y_top_proj      = y_top_coord2 * depth / z_by_ind[i];                  // compensate for projection morphing
                            y_bot_proj      = y_bot_coord2 * depth / z_by_ind[i];
                            y_height_proj = y_top_proj - y_bot_proj;
                            fill(255,155,0);
                                                     // Fill the globe pixels this color
                            left1           = i * (width) / wire;
                            top1            = (height/ppi - y_top_proj) * ppi ;     // ppi = pixel / mm.  These are conversions to & from pixels and mm
                            wide1           = string_pix_count;
                            tall1           = y_height_proj * ppi;
                            rect(left1, top1, wide1, tall1);
                    
                          } 
                 }
           }
          else
          {
               float xcoord = x_by_ind[i];
               if((xcoord >= (x_by_ind[startwire] - radius)) && (xcoord <= (x_by_ind[startwire] + radius))) 
               {          
                          // if a wire's x coord is close enough to the globe's center
                          float local_hyp = sqrt(sq(xcoord - x_by_ind[startwire]) + sq(z_by_ind[i] - z_by_ind[startwire]));            // find the distance from the wire to the globe's center
                          if(local_hyp <= radius) 
                          {
                            float y_abs   = sqrt(sq(radius) - sq(local_hyp));                      // find the height of the globe at that point                                          // find the top & bottom coords
                            float y_bot_coord2    = aeheight - y_abs;
                            float y_top_coord2     = aeheight + y_abs;                            // 
                            float y_top_proj      = y_top_coord2 * depth / z_by_ind[i];                  // compensate for projection morphing
                            float y_bot_proj      = y_bot_coord2 * depth / z_by_ind[i];
                            float y_height_proj = y_top_proj - y_bot_proj;
                            fill(0,255,0);
                                                     // Fill the globe pixels this color
                            float left1           = i * (width) / wire;
                            float top1            = (height/ppi - y_top_proj) * ppi ;     // ppi = pixel / mm.  These are conversions to & from pixels and mm
                            float wide1           = string_pix_count;
                            float tall1           = y_height_proj * ppi;
                            rect(left1, top1, wide1, tall1);
                    
                          } 
                 }
          } 
       }
       if(radius>finalradius)
       {
       aeheight = aeheight-fallspeed;
       }
       else
       {
         radius = radius+explodespeed;
       }
    } 
  }
}
