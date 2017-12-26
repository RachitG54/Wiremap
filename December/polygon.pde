class polygon
{
  PVector leftbottom= new PVector();
  PVector sidea= new PVector();
  PVector sideb= new PVector();
  PVector point4 = new PVector();
  float sidez = 2;
  float startz = depth-(depth_unit*depth_levels)/2;
  
  void setpolygon(PVector start,PVector side1,PVector side2,PVector side3,float widthpolygon,float startzaxis)
  {
  
      leftbottom.x = start.x;leftbottom.y = start.y;leftbottom.z = start.z;
      sidea.x = side1.x;sidea.y = side1.y;sidea.z = side1.z;
      sideb.x = side2.x;sideb.y = side2.y;sideb.z = side2.z;
      point4.x = side3.x;point4.y = side3.y;point4.z = side3.z;
      sidez = widthpolygon;
     // println(depth-(depth_unit*depth_levels)/2);
       startz = startzaxis;
  }
  
 void create()
 {
   
  float temp1,temp2,temp;
  temp1 =temp2=0;
  int flag1,flag2;flag1=flag2=0;
  float xcoord;

   for(int i =0;i<wire;i++)
  {
    flag1=flag2=0;
    if((z_by_ind[i]>=startz)&&(z_by_ind[i]<=startz+sidez))
    {
      xcoord = x_by_ind[i]+map_length/2;
      temp = point4.y+(xcoord-point4.x)*(point4.y-sidea.y)/(point4.x-sidea.x); 
      if((((temp<=point4.y)&&(temp>=sidea.y))||((temp>=point4.y)&&(temp<=sidea.y)))&&(((xcoord<=point4.x)&&(xcoord>=sidea.x))||((xcoord>=point4.x)&&(xcoord<=sidea.x))))
      {temp1 = temp;flag1=1;}
       
      temp = point4.y+(xcoord-point4.x)*(point4.y-sideb.y)/(point4.x-sideb.x);
      if((((temp<=point4.y)&&(temp>=sideb.y))||((temp>=point4.y)&&(temp<=sideb.y)))&&(((xcoord<=point4.x)&&(xcoord>=sideb.x))||((xcoord>=point4.x)&&(xcoord<=sideb.x))))
      {temp2 = temp;flag2=1;}
      temp = sidea.y+(xcoord-sidea.x)*(leftbottom.y-sidea.y)/(leftbottom.x-sidea.x);
      if((((temp<=leftbottom.y)&&(temp>=sidea.y))||((temp>=leftbottom.y)&&(temp<=sidea.y)))&&(((xcoord<=leftbottom.x)&&(xcoord>=sidea.x))||((xcoord>=leftbottom.x)&&(xcoord<=sidea.x))))
      {if(flag1==0){temp1 = temp;flag1=1;}else {temp2 = temp;flag2=1;}}
      //if(i==1)println(temp1+" "+temp2+" "+temp);
      temp = sideb.y+(xcoord-sideb.x)*(leftbottom.y-sideb.y)/(leftbottom.x-sideb.x);
      if((((temp<=leftbottom.y)&&(temp>=sideb.y))||((temp>=leftbottom.y)&&(temp<=sideb.y)))&&(((xcoord<=leftbottom.x)&&(xcoord>=sideb.x))||((xcoord>=leftbottom.x)&&(xcoord<=sideb.x))))
      {if(flag2==0){temp2 = temp;flag2=1;}else {temp1 = temp;flag1=1;}}
      float y_top_coord,y_bot_coord;
      if(temp1<temp2){y_bot_coord = temp1;y_top_coord = temp2;}
      else{y_bot_coord = temp2;y_top_coord = temp1;}
      //println(temp1+" "+temp2);
      if((flag1==1)&&(flag2==1))
         { float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord* depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1); }
    }
  }
 }
  
}
