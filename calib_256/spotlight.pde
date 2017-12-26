class spotlight
{
  float centrex;
  float centrey;
  float centrez; 
  float radius;
  float colred = 196;
  float colgreen = 20;
  float colblue = 20;
  spotlight(float x,float y,float z,float rad)
  {
    centrex = x;
    centrey = y;
    centrez = z;
    radius = rad;
  }
 
  void create()
   {

       
        int i;
        for(i=0;i<wire;i++)
        {
              float y_top_coord ;
              float y_bot_coord ;
              float y_top_proj ;                      // compensate for projection morphing IN INCHES
              float y_bot_proj ;
              float y_height_proj;
              float xcoord=/*i*map_unit-map_length/2;//*/x_by_ind[i];
              if((xcoord >= (centrex - radius)) && (xcoord <= (centrex + radius))) 
              {                  // if a wire's x coord is close enough to the globe's center
                  float local_hyp = sqrt(sq(xcoord - centrex) + sq(z_by_ind[i] - centrez));            // find the distance from the wire to the globe's center
                  if(local_hyp <= radius) 
                  {
                    float y_abs   = sqrt(sq(radius) - sq(local_hyp));                      // find the height of the globe at that point
                    y_top_coord     = centrey + y_abs;                                          // find the top & bottom coords
                    y_bot_coord     = centrey - y_abs;                                          // 
                    y_top_proj      = y_top_coord * depth / z_by_ind[i];                  // compensate for projection morphing
                    y_bot_proj      = y_bot_coord * depth / z_by_ind[i];
                    y_height_proj   = y_top_proj - y_bot_proj;
            
            
                    /* Top dot
                    ---------------------------------------------------------*/
                    fill(colred, colgreen, colblue);                                   // Fill the globe pixels this color
                    float left1           = i * (width) / wire;
                    float top1            = (height/ppi - y_top_proj) * ppi ;     // ppi = pixel / mm.  These are conversions to & from pixels and mm
                    float wide1           = string_pix_count;
                    float tall1           = y_height_proj * ppi;
                    rect(left1, top1, wide1, tall1);
            
                  } 
              }
       }
   }
}
