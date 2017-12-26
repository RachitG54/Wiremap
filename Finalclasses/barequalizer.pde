class barequalizer
{
  float[] y_top_coord = new float[wire];        // z coordinate for each wire
  float[] y_height_coord2 = new float[wire];        // z coordinate for each wire
   float[] y_top_coord3 = new float[wire];
   
   float[] change =  new float[wire];
   float[] changespeed = new float[wire];
   float[] changedelta = new float[wire];
   float randheight;
int rand;
   void initialize()
   {
       size(displayWidth, displayHeight, OPENGL);
  background(255);
  fill(0);
  rect(0,0,width,height);
  noStroke();
  if (loaded == false) {
    loader();
    loaded = true;
  }
  float y_top_coord2;
  fill(0);
    rect(0,0,width,height);
    for(int i=0;i<wire;i++)
    {
      y_top_coord3[i] = 4+random(3);
      float y_bot_coord = 0  ;                                          // calculate y's intersect
      float y_top_proj = y_top_coord3[i] * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
      float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
      float y_height_proj = y_top_proj - y_bot_proj;
      fill(255,0,255);                                                                    // draw a rectangle at that intersect

      // rect 1 is top dot for sliver
      float left1 = (i-round((wire-wires_hit)/2)) * (width) / wires_hit;
      float top1 = (height/ppi - y_top_proj) * ppi;
      float wide1 = width / wires_hit;
      float tall1 = y_height_proj*ppi;
      //rect(left1, top1, string_pix_count, tall1);                                                        // draw a rectangle at that intersect
      y_bot_coord = y_top_coord3[i];
      y_top_coord2 = y_bot_coord+0.75+random(0.5);
      y_top_proj = y_top_coord2 * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
      y_bot_proj = y_bot_coord * depth / z_by_ind[i];
      y_height_proj = y_top_proj - y_bot_proj;
      // rect 2 is bottom dot for sliver
      fill(255);
      float left2 = (i-round((wire-wires_hit)/2)) * (width) / wires_hit;
      float top2 = (height/ppi - y_top_proj) * ppi;
      float wide2 = width / wires_hit;
      float tall2 = y_height_proj*ppi;
      //rect(left2, top2, string_pix_count, tall2);
      //y_top_proj[i]=y_top_proj;
      y_height_coord2[i]=y_top_coord2-y_bot_coord;
      change[i] = random(100);
      changedelta[i] = 1;
      y_top_coord[i]=y_top_coord3[i];
     
        change[i]=1+random(1);
        changespeed[i]=0.07;
      
    }
   }
   void create()
   {
       noStroke();
  if (loaded == false) {
    loader();
    loaded = true;
  }
      int time =(int)(millis());
  
  time = time%1000;
  if(!((time>=26)&&(time<4556)))
  {
  rand = (int)random(127);
  randheight = 9+random(3);
  }
  fill(0);
    rect(0,0,width,height);
    for(int i=0;i<wire;i++)
    {
      if(!((time>=26)&&(time<4556)))
      {y_top_coord[i] = y_top_coord[i]+changedelta[i]*changespeed[i];
      if((y_top_coord[i]>change[i]+y_top_coord3[i])||(y_top_coord[i]<-change[i]+y_top_coord3[i]))
      {
        changedelta[i]=-changedelta[i];
      }
      //if(i==0)println(y_top_coord[i]);
      float y_bot_coord = 0  ;                                          // calculate y's intersect
      float y_top_proj = y_top_coord[i] * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
      float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
      float y_height_proj = y_top_proj - y_bot_proj;
      fill(255,0,255);                                                                    // draw a rectangle at that intersect

      // rect 1 is top dot for sliver
      float left1 = (i-round((wire-wires_hit)/2)) * (width) / wires_hit;
      float top1 = (height/ppi - y_top_proj) * ppi;
      float wide1 = width / wires_hit;
      float tall1 = y_height_proj*ppi;
      rect(left1, top1, string_pix_count, tall1);                                                        // draw a rectangle at that intersect
      y_bot_coord = y_top_coord[i];
      float y_top_coord2 = y_bot_coord+y_height_coord2[i];
      y_top_proj = y_top_coord2 * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
      y_bot_proj = y_bot_coord * depth / z_by_ind[i];
      y_height_proj = y_top_proj - y_bot_proj;
      // rect 2 is bottom dot for sliver
      fill(255);
      float left2 = (i-round((wire-wires_hit)/2)) * (width) / wires_hit;
      float top2 = (height/ppi - y_top_proj) * ppi;
      float wide2 = width / wires_hit;
      float tall2 = y_height_proj*ppi;
      rect(left2, top2, string_pix_count, tall2);      // draw a rectangle at that intersect
      }
      else if(!((i>=rand-3)&&(i<=rand+3)))
      {
        
        y_top_coord[i] = y_top_coord[i]+changedelta[i]*changespeed[i];
      if((y_top_coord[i]>change[i]+y_top_coord3[i])||(y_top_coord[i]<-change[i]+y_top_coord3[i]))
      {
        changedelta[i]=-changedelta[i];
      }
      //if(i==0)println(y_top_coord[i]);
      float y_bot_coord = 0  ;                                          // calculate y's intersect
      float y_top_proj = y_top_coord[i] * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
      float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
      float y_height_proj = y_top_proj - y_bot_proj;
      fill(255,0,255);                                                                    // draw a rectangle at that intersect

      // rect 1 is top dot for sliver
      float left1 = (i-round((wire-wires_hit)/2)) * (width) / wires_hit;
      float top1 = (height/ppi - y_top_proj) * ppi;
      float wide1 = width / wires_hit;
      float tall1 = y_height_proj*ppi;
      rect(left1, top1, string_pix_count, tall1);                                                        // draw a rectangle at that intersect
      y_bot_coord = y_top_coord[i];
      float y_top_coord2 = y_bot_coord+y_height_coord2[i];
      y_top_proj = y_top_coord2 * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
      y_bot_proj = y_bot_coord * depth / z_by_ind[i];
      y_height_proj = y_top_proj - y_bot_proj;
      // rect 2 is bottom dot for sliver
      fill(255);
      float left2 = (i-round((wire-wires_hit)/2)) * (width) / wires_hit;
      float top2 = (height/ppi - y_top_proj) * ppi;
      float wide2 = width / wires_hit;
      float tall2 = y_height_proj*ppi;
      rect(left2, top2, string_pix_count, tall2);      // draw a rectangle at that intersect
      
      }
      else
      {
         y_top_coord[i] = y_top_coord[i]+changedelta[i]*changespeed[i];
        
      if((y_top_coord[i]>change[i]+y_top_coord3[i])||(y_top_coord[i]<-change[i]+y_top_coord3[i]))
      {
        changedelta[i]=-changedelta[i];
      }
      //if(i==0)println(y_top_coord[i]);
      float y_bot_coord = 0  ;                                          // calculate y's intersect
      float y_top_proj = randheight * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
      float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
      float y_height_proj = y_top_proj - y_bot_proj;
      fill(255,0,255);                                                                    // draw a rectangle at that intersect

      // rect 1 is top dot for sliver
      float left1 = (i-round((wire-wires_hit)/2)) * (width) / wires_hit;
      float top1 = (height/ppi - y_top_proj) * ppi;
      float wide1 = width / wires_hit;
      float tall1 = y_height_proj*ppi;
      rect(left1, top1, string_pix_count, tall1);                                                        // draw a rectangle at that intersect
      y_bot_coord = randheight;
      float y_top_coord2 = y_bot_coord+y_height_coord2[i];
      y_top_proj = y_top_coord2 * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
      y_bot_proj = y_bot_coord * depth / z_by_ind[i];
      y_height_proj = y_top_proj - y_bot_proj;
      // rect 2 is bottom dot for sliver
      fill(255);
      float left2 = (i-round((wire-wires_hit)/2)) * (width) / wires_hit;
      float top2 = (height/ppi - y_top_proj) * ppi;
      float wide2 = width / wires_hit;
      float tall2 = y_height_proj*ppi;
      rect(left2, top2, string_pix_count, tall2);      // draw a rectangle at that intersect
      
      }
  }
   }
}
