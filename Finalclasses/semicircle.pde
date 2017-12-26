class semicircle
{
  float sidez;
  float startz;
  float radius=5;
  int direction=1;
  float donut=0.5;
  PVector centre = new PVector();
  void setcircle(PVector a,float b,float c ,float d,int e,float f)
  {
    sidez = c;
    startz =d;
    radius = b;
    centre.x = a.x;centre.y = a.y;centre.z = a.z;
    direction = e;
    donut = f;
  }
  void create()
  {
    float temp,temp1,temp2,xcoord;
     int flag;
    for(int i =0;i<wire;i++)
    {
   
    xcoord = x_by_ind[i]+(map_length/2);
    if((z_by_ind[i]>=startz)&&(z_by_ind[i]<=startz+sidez))
      {
       temp = (radius*radius)-((xcoord-centre.x)*(xcoord-centre.x));
       if(temp<=0)continue;
       temp = sqrt(temp);
       temp1 = ((radius-donut)*(radius-donut))-((xcoord-centre.x)*(xcoord-centre.x));
       if(temp1<=0)flag=1;
       else flag=0;
       temp1 = sqrt(temp1);
       if(flag==0)
       {if(direction==1)
       {if(centre.x<xcoord)
         {float y_top_coord = centre.y-temp1;
       float y_bot_coord = centre.y-temp;
       float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
    y_top_coord = centre.y+temp;
      y_bot_coord = centre.y+temp1;
       y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    y_height_proj = y_top_proj - y_bot_proj;
    left1 = i * (width) / wire;
    top1 = (height/ppi - y_top_proj) * ppi;
    wide1 = string_pix_count;
    tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
        } 
      }
     
      else if(direction==-1)
      {
         if(centre.x>xcoord)
         {
             float y_top_coord = centre.y-temp1;
       float y_bot_coord = centre.y-temp;
       float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
    y_top_coord = centre.y+temp;
      y_bot_coord = centre.y+temp1;
       y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    y_height_proj = y_top_proj - y_bot_proj;
    left1 = i * (width) / wire;
    top1 = (height/ppi - y_top_proj) * ppi;
    wide1 = string_pix_count;
    tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
         } 
        }
        else if(direction==2)
      {
         if((acos((xcoord-centre.x)/radius)<(PI/4.0))&&(acos((xcoord-centre.x)/radius)>(-PI/4.0)))
         {
             float y_top_coord = centre.y-temp1;
       float y_bot_coord = centre.y-temp;
       float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
    y_top_coord = centre.y+temp;
      y_bot_coord = centre.y+temp1;
       y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    y_height_proj = y_top_proj - y_bot_proj;
    left1 = i * (width) / wire;
    top1 = (height/ppi - y_top_proj) * ppi;
    wide1 = string_pix_count;
    tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
         } 
        }
        else if(direction==-2)
      {
         if((acos((xcoord-centre.x)/radius)<(PI/4.0))&&(acos((xcoord-centre.x)/radius)>(-PI/4.0)))
         {
             float y_top_coord = centre.y-temp1;
       float y_bot_coord = centre.y-temp;
       float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
    y_top_coord = centre.y+temp;
      y_bot_coord = centre.y+temp1;
       y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    y_height_proj = y_top_proj - y_bot_proj;
    left1 = i * (width) / wire;
    top1 = (height/ppi - y_top_proj) * ppi;
    wide1 = string_pix_count;
    tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
         } 
        }
       }
      else
     {
       if(direction==1)
       {if(centre.x<=xcoord)
         {float y_top_coord = centre.y+temp;
       float y_bot_coord = centre.y-temp;
       float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
  
        } 
      }
     
      else if(direction==-1)
      {
         if(centre.x>=xcoord)
         {
             float y_top_coord = centre.y+temp;
       float y_bot_coord = centre.y-temp;
       float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
    
         } 
        }
        
      else if(direction==2)
      {
         if((acos((xcoord-centre.x)/radius)<(PI/4.0))&&(acos((xcoord-centre.x)/radius)>(-PI/4.0)))
         {
             float y_top_coord = centre.y+temp;
       float y_bot_coord = centre.y-temp;
       float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
    
         } 
        }
        
      else if(direction==-2)
      {
         if((acos((xcoord-centre.x)/radius)<(PI/4.0))&&(acos((xcoord-centre.x)/radius)>(-PI/4.0)))
         {
             float y_top_coord = centre.y+temp;
       float y_bot_coord = centre.y-temp;
       float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
    
         } 
        }
     } 
      }
    }
  }
}
