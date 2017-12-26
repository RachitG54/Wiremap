import processing.opengl.*;


  float depth = 43.0;                     // distance from projector Mapline   CHANGE
  float map_length = 32.0;                // mapline length
  float depth_unit = 0.25;                   // units, in inches, along hyp
  float map_unit = 0.25;                     // units, in inches, along mapline
  int wire = 128;                   

  float[] map = new float[wire];             // distance from mapline to point of intersection along hypot
  float[] x_by_ind = new float[wire];        // x coordinate for each wire
  float[] z_by_ind = new float[wire];  
boolean test=false;  
float w=0.5;
float t=0;
float k=0.5;
int count=0;
 int size;
 int R=255,G=255,B=255;  
float y0=2;
 
static public void main(String args[]) {
  PApplet.main(new String[] { "--present", "All" });
}


void setup(){
size(displayWidth,displayHeight,OPENGL);
background(0);
}

void draw(){
fill(0);
rect(0,0,width,height);
noStroke();
  frameRate(30);


data();
//makeSphere(0,6,35,5);
drawSine(xMouse(),6,zMouse(),5,0.3);
//paintBall(0);
//drawCube(0,8,30,10);
//drawSineMouse(xmouse(),6,zmouse(),3,0.3);
//System.out.println(count);
//System.out.println("x"+xmouse()+" "+zmouse());

if(mousePressed)
System.out.println(zMouse());


}

public void data()
{
map[0] = 41;
map[1] = 37;
map[2] = 64;
map[3] = 77;
map[4] = 5;
map[5] = 33;
map[6] = 26;
map[7] = 3;
map[8] = 43;
map[9] = 2;
map[10] = 1;
map[11] = 25;
map[12] = 15;
map[13] = 51;
map[14] = 71;
map[15] = 61;
map[16] = 35;
map[17] = 4;
map[18] = 19;
map[19] = 8;
map[20] = 39;
map[21] = 55;
map[22] = 47;
map[23] = 50;
map[24] = 9;
map[25] = 66;
map[26] = 15;
map[27] = 7;
map[28] = 28;
map[29] = 54;
map[30] = 4;
map[31] = 38;
map[32] = 76;
map[33] = 49;
map[34] = 7;
map[35] = 26;
map[36] = 18;
map[37] = 16;
map[38] = 57;
map[39] = 67;
map[40] = 63;
map[41] = 18;
map[42] = 29;
map[43] = 42;
map[44] = 1;
map[45] = 14;
map[46] = 21;
map[47] = 55;
map[48] = 79;
map[49] = 65;
map[50] = 35;
map[51] = 42;
map[52] = 32;
map[53] = 5;
map[54] = 66;
map[55] = 68;
map[56] = 17;
map[57] = 10;
map[58] = 49;
map[59] = 74;
map[60] = 39;
map[61] = 73;
map[62] = 30;
map[63] = 78;
map[64] = 22;
map[65] = 13;
map[66] = 71;
map[67] = 10;
map[68] = 29;
map[69] = 61;
map[70] = 12;
map[71] = 57;
map[72] = 37;
map[73] = 22;
map[74] = 17;
map[75] = 0;
map[76] = 60;
map[77] = 6;
map[78] = 14;
map[79] = 47;
map[80] = 13;
map[81] = 52;
map[82] = 56;
map[83] = 0;
map[84] = 19;
map[85] = 70;
map[86] = 48;
map[87] = 34;
map[88] = 53;
map[89] = 11;
map[90] = 32;
map[91] = 72;
map[92] = 23;
map[93] = 20;
map[94] = 2;
map[95] = 25;
map[96] = 59;
map[97] = 8;
map[98] = 74;
map[99] = 36;
map[100] = 24;
map[101] = 62;
map[102] = 31;
map[103] = 77;
map[104] = 45;
map[105] = 68;
map[106] = 59;
map[107] = 21;
map[108] = 31;
map[109] = 40;
map[110] = 28;
map[111] = 11;
map[112] = 64;
map[113] = 27;
map[114] = 44;
map[115] = 9;
map[116] = 58;
map[117] = 44;
map[118] = 23;
map[119] = 34;
map[120] = 75;
map[121] = 3;
map[122] = 69;
map[123] = 51;
map[124] = 46;
map[125] = 53;
map[126] = 46;
map[127] = 40;

  for(int j=0; j<wire; j++) {                         // calculates x and z coordinates of each wire
    float xmap = (0 - (map_length / 2)) + j*map_unit;//xmap:-xmap2/->+xmap/2
    float hyp = sqrt(sq(xmap) + sq(depth));
    z_by_ind[j] = depth - map[j]*depth_unit;//false code.0.5 is depth unit
    x_by_ind[j] = xmap*(1-map[j]*depth_unit/depth);//should be xmap*(1-map[j]*depth_unit/depth)
  }

 //displayMap();
 

}



public void displayMap()
  {
   for(int i=0;i<wire;i++)
   {
     if(z_by_ind[i]-23.0<6.66)
     {
       test=true;
     fill(255,0,0);
     rect(i*width/wire,0,2,height);
     }
     else if(z_by_ind[i]-23.0<13.22)
     {
       fill(0,255,0);
       rect(i*width/wire,0,2,height);
       
     }
     
     else    
     {
     fill(0,0,255);                                                //calib
     rect(i*width/wire,0,2,height);
     }
   }
  }  
  
  void makeSphere(float x0,float y0,float z0,float r)//SPHEre>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.
  {
  
    
  float y,y_in_px,y0_in_px;
  
  for(int i=0;i<wire;i++)
    {
    if((dist(x0,z0,i))<=r)
      {
        test=true;  
             
        y=sqrt(r*r-((x0-x_by_ind[i])*(x0-x_by_ind[i])+(z0-z_by_ind[i])*(z0-z_by_ind[i])));
         
        //System.out.println(y_in_px);
        fill(255);
        rect(i*width/wire,height-(inPix(y,i)+inPix(y0,i)),2,2*inPix(y,i));
      }
    }
  
  
  }
  
  ///////////////////////////////

  float  inPix(float y,int i)
  {
  y=y*23*768/(10*sqrt(x_by_ind[i]*x_by_ind[i]+z_by_ind[i]*z_by_ind[i]));
  return y;
  }
  /////////////////////////////////
  float dist(float x0, float z0,int i)
  {
  return sqrt((x0-x_by_ind[i])*(x0-x_by_ind[i])+(z0-z_by_ind[i])*(z0-z_by_ind[i]));
  }
  /////////////////////////////////
  float y;
   void drawSine(float x0,float y0,float z0, int A,float d)
  {
  for(int i=0;i<wire;i++)
      {
       y=pow(10,-0.05*dist(x0,z0,i))*A*sin(w*t+k*(dist(x0,z0,i))) ;
      
 
       System.out.println(y0);
       
       
     fill(0,255,0);
     rect(i*width/wire,height-(inPix(y,i)+inPix(y0,i)),5,50);  
      }
      
      incrementTime(d);
     
  
  }
  /////////////////////////////
  void drawSineMouse(float x0,float z0,float y0,int A,float d)
  {  for(int i=0;i<wire;i++)
        {
        y=A*sin(w*t+k*(dist(x0,z0,i)));
        System.out.println(y);
     fill(255,0,0);
     rect(i*width/wire,height-(inPix(y,i)+inPix(y0,i)),2,10);  
        }
        if(mousePressed)
        {
       incrementTime(d); 
        }
  
  }
  //////////////////////////
 
  float xMouse()
  {
  return (mouseX / float(width)) * (map_length) - (map_length / 2);

  }
  float zMouse()
  {
  return ((float(height)-mouseY)/float(height))*20+23;
  }
  ///////////////////////////////
  void drawCube(float x0,float y0,float z0,float s)
  {
  for(int i=0;i<wire;i++)
    {
    if(x_by_ind[i]>=x0&&x_by_ind[i]<=x0+s)
     {
     if(z_by_ind[i]>=z0&&z_by_ind[i]<=z0+s)
       {
       float h=s;
        fill(0,66,99);
         rect(i*width/wire,height-(inPix(h/2,i)+inPix(y0,i)),2,inPix(h,i));
       
       }
     }
    }
  }
  ////////////
  void incrementTime(float d)
  {
  t=t+d;
  
  }
  ///////////
  
  
 void paintBall(float y0)
{
if(mousePressed)
  {
  for(int i=0;i<wire;i++)
    {
    if(dist(xMouse(),zMouse(),i)<size)
      {y=sqrt(size*size-dist(xMouse(),zMouse(),i)*dist(xMouse(),zMouse(),i));
      fill(255);
       rect(i*width/wire,height-(inPix(y,i)+inPix(y0,i)),2,2*inPix(y,i));
      
      }
      if(mouseButton==RIGHT)
      {
      y0=y0+0.5;
      }
    }
  }
}

void keyPressed()
  {
  if(key=='w')
    {
    R=255;
    G=255;
    B=255;
    }
   else if(key=='r')
    {
    R=255;
    G=0;
    B=0;
    } 
    else if(key=='b')
    {
    R=0;
    G=0;
    B=255;
    }
    else if(key=='d')
    {
    R=0;
    G=0;
    B=0;
    }
    else if(key=='c')
    {
    fill(0);
    rect(0,0,width,height);
    }
    
  }
  
   void paintBall()
{
if(mousePressed)
  {
  for(int i=0;i<wire;i++)
    {
    if(dist(xMouse(),zMouse(),i)<size)
      {y=sqrt(size*size-dist(xMouse(),zMouse(),i)*dist(xMouse(),zMouse(),i));
      fill(R,G,B);
       rect(i*width/wire,height-(inPix(y,i)+inPix(y0,i)),2,2*inPix(y,i));
      
      }
      if(mouseButton==RIGHT)
      {
      y0=y0+0.005;
      if(y0>inPix(y0,83))
      y0=inPix(y0,83);
      }
      if(mouseButton==CENTER)
      {
      y0-=0.005;
      if(y0<0)       
      y0=0;
      }
    }
  }
}





 
  

