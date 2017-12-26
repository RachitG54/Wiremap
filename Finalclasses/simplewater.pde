class simplewater
{
  
float t=0;
  void create()
  {
    noStroke();
loader();
  
fill(0);
rect(0,0,width,height);
//halfRingRotor(0,7,33,9,5,0.05);
water(5,0.005,0.1);
  }
  float inPix(float y,int i)
{
return y*23*768/(10*sqrt((z_by_ind[i])*(z_by_ind[i]) + (x_by_ind[i])*(x_by_ind[i])));
}



//______________________________________

void water( float A, float w, float k)
{
 for(int i=0; i<wire; i++)
  {
  float y= A * sin (w*t + k* z_by_ind[i]);
   if(z_by_ind[i]>23+40/3)
     {fill(255,0,255);}
    else { if( z_by_ind[i]>20+20/3)
            {fill(0,255,0);}
            else{fill(255,0,0);}
    }
   
   //fill(255);
   rect(i * width / wire, height -inPix(y,i) -0.1*t , 5, 40);
  t=t+0.1;

}
}
}
