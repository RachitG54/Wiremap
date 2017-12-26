class barequalizer
{
  int hVal=0;
  float fallspeedpix = 5;
  float[] fallypix = new float[wire];
  boolean[] count=new boolean[wire];
  int number = 3;
  barequalizer()
  {
    for(int j=0;j<wire;j++)
    {
      fallypix[j] = height;
      count[j]=true;
    }
  }
  void create()
  {
     if((time>starttime+42524-lapsetime)&&(time<starttime+48491-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      ;
    }
    else
    {
     
     for(int i = 0; i < fft.specSize(); i ++)// specSize is changing the range of analysis
     {
     
      for(int j=0;j<wire;j++)
       {
         
          float zcentre = depth-depth_levels*depth_unit/2;
          float zdiff = abs(z_by_ind[j]-zcentre);
          float val = -100-fft.getFreq(i/2)*10*(depth/z_by_ind[j])*(1-0.02*zdiff);
         if(count[j]==true){count[j]=false;fallypix[j]=height+val;}
       float len1 = (i*1.4)*map_length/width;
       float len2 = ((i+1)*1.4)*map_length/width;
       //if(j==255){len1 = map_length/2;len2 = map_length;}
       float x =map_length/2+x_by_ind[j];
       
       if((x>len1)&&(x<len2))
        {
           smooth();
          colorMode(HSB);// sets color mode value 
          fill(hVal, 255,255);//cycles through hue and brightness to expose a greater color palete
          colorMode(RGB);//sets color mode back to Red green and blue
          rect(j*(width/wire),height, string_pix_count,val );// draws a rect and alters its height based on the translated frequency
          if(fallypix[j]>height+val)
          {
            fill(255); 
            rect(j*(width/wire),height+val, string_pix_count, -7);// draws a rect and alters its height based on the translated frequency
            fallypix[j] = height+val;
            //println("Yeah");
          }
          else
          {
            fallypix[j]=fallypix[j]+fallspeedpix;
            fill(255); 
            rect(j*(width/wire),fallypix[j], string_pix_count, -7);// draws a rect and alters its height based on the translated frequency
          }
                   
        }      
       }
      }
       hVal +=1;
      
      if(hVal > 255)
      {
        hVal = 0;
      }
    }   
  }
}
