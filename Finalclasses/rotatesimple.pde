class rotatesimple
{
  
float thetachangespeed = 0.04;
float theta=0;
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
 
  fill(0);
    rect(0,0,width,height);
    for(int i=0;i<wire;i++)
    {
     
      if(x_by_ind[i]<0)
      {
        if((z_by_ind[i])>depth-10)
        {
          fill(255,0,0);
          rect(i * width / wire, 0, 4, height);
        
         }
         else
         {
           fill(0,255,0);
          rect(i * width / wire, 0, 4, height);
         }
      }
      else
      {
        if((z_by_ind[i])>depth-10)
        {
          fill(0,0,255);
          rect(i * width / wire, 0, 4, height);
        
         }
         else
         {
           fill(0,0,0);
          rect(i * width / wire, 0, 4, height);
         }
      }
    }
  }
  void create()
  {
  noStroke();
  if (loaded == false) {
    loader();
    loaded = true;
  }
 fill(0);   
  rect(0,0,width,height);
  int time =(int)(millis());
  fill(0);
    rect(0,0,width,height);
    
  theta = theta + thetachangespeed;
  float x,y;
  for(int i=0;i<wire;i++)
  {
  x = x_by_ind[i];
  y = z_by_ind[i]-depth+10;
  float temp;
  temp = x*cos(theta)+y*sin(theta);
  y = -x*sin(theta)+y*cos(theta);
  x = temp;
  
     
      if(x<0)
      {
        if(y>0)
        {
          fill(255,0,0);
          rect(i * width / wire, 0, 4, height);
        
         }
         else
         {
           fill(0,255,0);
          rect(i * width / wire, 0, 4, height);
         }
      }
      else
      {
        if(y>0)
        {
          fill(0,0,255);
          rect(i * width / wire, 0, 4, height);
        
         }
         else
         {
           fill(0,0,0);
          rect(i * width / wire, 0, 4, height);
         }
      }
    
 
      }
  } 


}
