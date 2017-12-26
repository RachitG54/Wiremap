//  Fullscreen stuff:




// Variables for Physical Wiremap
// units in INCHES


             // height of dots in pxs

class childrenmod
{
float speedofrain = 0.05;
float speedofrain2 = 0.0025;


// Variables for the Projector

  
  int dot_height = 5;
// Variables for to build the Map

  float[] y_top_proj = new float[wire];
  float[] y_top_coord = new float[wire];
  float[] y_bot_coord = new float[wire];
  float[] flag = new float[wire];
  // Variables for Calibration


  
void initialize() {
 
   for(int i=0;i<wire;i++)
  {
     y_top_proj[i] = random(24);                      // compensate for projection morphing IN INCHES
     y_top_coord[i]=0.5+random(0.25);
     y_bot_coord[i] = 0;
     flag[i]=1;
   }
}

void create() {
  
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
  float y_bot_coord2,y_top_proj2,y_bot_proj,y_height_proj;

  for(int i=0;i<wire;i++)
  {
     
     y_top_coord[i] = y_top_coord[i]+speedofrain2;
     y_top_proj2 = y_top_coord[i] * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
     if(y_top_proj2>24)
     {
       y_top_proj2=24;
       y_bot_coord[i] = y_bot_coord[i]+speedofrain2;
       flag[i]=0;
     }
     y_bot_proj = y_bot_coord[i] * depth / z_by_ind[i];
     y_height_proj = y_top_proj2 - y_bot_proj;
      fill(0,255,0);
      // draw a rectangle at that intersect
      float left1 = (i-round((wire-wires_hit)/2)) * (width) / wires_hit;
      float top1 = (height/ppi - y_top_proj2) * ppi;
      float wide1 = width / wires_hit;
      float tall1 = y_height_proj*ppi;
      rect(left1, top1, string_pix_count, tall1);  
      
   }
  
  float y_bot_proj2;
  for(int i=0;i<wire;i++)
  {
    if(flag[i]==1) 
    {//y_top_proj = random(96);                      // compensate for projection morphing IN INCHES
     y_top_proj[i] = y_top_proj[i] - speedofrain;
     if(y_top_proj[i]<0)y_top_proj[i] = y_top_proj[i]+24;
     y_height_proj = 0.75;
     y_bot_proj2 = y_height_proj-y_top_proj[i];
      fill(0,255,0);
      // draw a rectangle at that intersect
      float left1 = (i-round((wire-wires_hit)/2)) * (width) / wires_hit;
      float top1 = (height/ppi - y_top_proj[i]) * ppi;
      float wide1 = width / wires_hit;
      float tall1 = y_height_proj*ppi;
      rect(left1, top1, string_pix_count, tall1);  
    } 
   }  
  
}
}

