
//  Fullscreen stuff:
import ddf.minim.*;
import ddf.minim.signals.*; 
import ddf.minim.analysis.*;
import processing.opengl.*;
import processing.video.*;
Movie myMovie1;

Minim minim;
FFT fft;

AudioPlayer track;

// Wiremap Renderer for GLOBE
// by


//              /      \
//       ______/________\______
//      /      \        /      \
//     /________\      /________\______
//    /                \         |     \
//   /   /      \       \_____   |      \
//      /________\______         |      /
//      \        /      \        |_____/
//       \      /________\
//              \          \     /
//               \_____      \ /
//                           / \
//                         /     \

// March 31, 06

// "a" and "z" mess with the depth of the globe.
// The arrow keys move the globe up, down, left, or right.
// "s" and "x" grown and shrink the globe

// note: all of the calibration functionality should still work



// Variables for Physical Wiremap
// units in INCHES

float depth = 144.0;                     // distance from projector Mapline
float map_length = 96.0;                // mapline length
float depth_unit = 0.375;                   // units, in inches, along hyp
float map_unit = 0.375;                     // units, in inches, along mapline
int wire = 256;                            // number of wires in contraption
float depth_levels = 160;                     // number of depth levels
float depth_levels_third = depth_levels / 3; //
float aspectrat = 1.33333;
// Variables for the Projector

int wires_hit = 256;                       // how many wires the projector hits
float ppi = 10.66666667;                         // pixels per inch

// Variables for to build the Map

float[] map = new float[wire];             // distance from mapline to point of intersection along hypot
float[] x_by_ind = new float[wire];        // x coordinate for each wire
float[] z_by_ind = new float[wire];        // z coordinate for each wire

// Variables for Calibration

  boolean once=true;
int count = 0;

int next=1;

// Variables for slivers

boolean loaded = false;                    // switch to load info only once
int dot_height = 5;                       // height of dots in pxs

// Varaibles for key input

boolean firsttime=true;
int num=255;
int num2=255;
float string_pix_count=3;
int starttime = 10000;
int lapsetime = 920;
piano modulepiano = new piano();
barequalizer modulebarequalizer = new barequalizer();
clock moduleclock = new clock();
crazzyfrog modulecrazzyfrog = new crazzyfrog();
crazzyfrog2 modulecrazzyfrog2 = new crazzyfrog2();
crazzyfrog3 modulecrazzyfrog3 = new crazzyfrog3();
Righthere moduleRighthere = new Righthere();
fireworks modulefireworks = new fireworks();
pattern1 modulepattern1 = new pattern1();
cone modulecone = new cone();
helix modulehelix = new helix();
donutwave moduledonutwave = new donutwave();
mridul modulemridul = new mridul();
mirrorequalizer modulemirrorequalizer = new mirrorequalizer();
sunset modulesunset = new sunset();
dna_ultimate moduledna_ultimate = new dna_ultimate();
pianoend modulepianoend = new pianoend();
waterfall modulewaterfall = new waterfall();
spiral modulespiral = new spiral();
parabola moduleparabola = new parabola();
ball_spot moduleball_spot = new ball_spot();
lastmridul modulelastmridul = new lastmridul();
finalpattern modulefinalpattern = new finalpattern();
int time;
PImage sky;
void setup() {
  size(displayWidth, displayHeight, OPENGL);
  sky = loadImage("images.jpg");
  background(255);
  myMovie1 = new Movie(this, "Music Visualization_ Mute Math - Reset (HD).mp4");
   minim = new Minim(this);
  track = minim.loadFile("track5.mp3",2048);// load your mp3 file here make sure you use processing's built in add file feature and type the name of the loaded mp3 inside the quotation marks
  fft = new FFT(track.bufferSize(),track.sampleRate());//allows for the decription of the sound waves
}

void draw() {
  
  
        image(myMovie1, 0, 0,width,height);  
   fft.forward(track.mix);
   time = millis();
 if((fft.getFreq(325)*1.2>40)&&(firsttime))
 {starttime = time;firsttime = false;}

 track.play();
// myMovie.play();
  if(next==0)
    {
    noStroke();
    if (loaded == false)
    {
      loader();
      loaded = true;
    }
    fill(0);
    rect(0, 0, width, height);
   
   //-----------------------------------------------
   
    
      for(int i = 0; i < num; i ++){
     if(map[i] > depth_levels_third && map[i] < depth_levels_third * 2) {
     fill(0, 0 ,255);
     } else if(map[i] > (depth_levels_third * 2)) {
     fill(255,0,0);
     } else {
     fill(0,255,0);
     }
     rect(i*(width/wire),0,3,height);}
     fill(255);
     rect(num*(width/wire),0,3,height);
      println((144-z_by_ind[num])+" "+num+" "+(48+x_by_ind[num]));
     for(int j=255;j>num2;j--)
     {
      if(map[j] > depth_levels_third && map[j] < depth_levels_third * 2) {
     fill(0, 0 ,255);
     } else if(map[j] > (depth_levels_third * 2)) {
     fill(0,255,0);
     } else {
     fill(255,0,0);
     } 
     rect((j*width)/wire,0,3,height);
     }
     fill(255);
     rect((num2*width)/wire,0,3,height);
     println((144-z_by_ind[num2])+" "+num2+" "+(48-x_by_ind[num2]));
     
     
    
    //------------------------------------------------------------------------
    
    
     /*
     if(map[i] > depth_levels_third && map[i] < depth_levels_third * 2) {
     fill(255, 0 ,0);
     } else if(map[i] > (depth_levels_third * 2)) {
     fill(0,255,0);
     } else {
     fill(0,0,255);
     } */
   // playSine();
    for(int i=0;i<wire;i++)
     {
       
       if(i==0){fill(255);rect(i * width / wire, 0, 3.5, height);println((144-z_by_ind[i])+" "+i+" "+(x_by_ind[i]));}
     if(i==4){fill(255,0,0);rect(i * width / wire, 0, 3.5, height);println((144-z_by_ind[i])+" "+i+" "+(x_by_ind[i]));}
     if(i==255){fill(255);rect(i * width / wire, 0, 3.5, height);println((144-z_by_ind[i])+" "+i+" "+(x_by_ind[i]));}
     
       
       //if(map[i]>158||map[i]==0)
     //{fill(255);
   //  println(i+" - "+(144-z_by_ind[i]));
     //rect(i * width / wire, 0, 3, height);
     //}
     
     /*fill(255);
     rect(255*(width/wire),0,3.5,height);
     rect(0,0,3.5,height);
     rect(51*(width/wire),0,3.5,height);
     if(i==0);
     //println((144-z_by_ind[i])+" "+i);
     if(i==250);
     //println(144-z_by_ind[i]+" "+i);
     if(i==222)
     {
       fill(255,0,0);
       rect(222
       *(width/wire),0,3.5,height);
       println((144-z_by_ind[i])+" "+i+" "+(x_by_ind[i]));
     }
     //rect(0,0,3,height);
     /*if((i>65)&&(i<185))
     {
     if((map[i]>=54)&&(map[i]<108))
     {
     count++;//35
     
     if(i<176 )
     {
     fill(0,255,0);
     rect(i * width / wire, 0, 3.5, height);
     }
     if(i==176)
     {
     println((144-z_by_ind[i])+" "+i+" "+(x_by_ind[i]));
     fill(255,0,0);
     rect(i * width / wire, 0, 3.5, height);
     }     
     }
     }
     //rect(i * width / wire, 0, 3.5, height);
     //rect(i*4, height - 40, 2, 40);
     //  }*/
   
   //if(map[i]>157)
   //{fill(255);rect(i * width / wire, 0, 3.5, height);
   //println(i+"xx"+ x_by_ind[i]);
   //}
   //fill(0,255,0);rect(247 * width / wire, 0, 3.5, height);
   
     }
  }
  else if(next==1)
  {
    if((time>starttime+917-lapsetime)&&(time<starttime+31645-lapsetime))
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
          
            modulepiano.create();
       }
       else if((time<starttime+42312-lapsetime)&&(time>starttime+31645-lapsetime))
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
          
            modulebarequalizer.create();
       }
       else if((time>starttime+42312-lapsetime)&&(time<starttime+43290-lapsetime))
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
          
          modulepattern1.create();
          //  moduledumbell.create();
       }
       else if((time>starttime+43290-lapsetime)&&(time<starttime+60000-lapsetime))
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
          
            modulemirrorequalizer.create();
       }
       else if((time>starttime+60000-lapsetime)&&(time<starttime+75320-lapsetime))
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
          
           moduledonutwave.create();
       }
       
       else if((time>starttime+75320-lapsetime)&&(time<starttime+81840-lapsetime))
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
          
            modulecone.create();
       }
       else if((time>starttime+81840-lapsetime)&&(time<starttime+91940-lapsetime))
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
          
            modulemridul.create();
       }
       
       else if((time>starttime+91940-lapsetime)&&(time<starttime+103242-lapsetime))
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
          
            moduleRighthere.create();
       }
       else if((time>starttime+103242-lapsetime)&&(time<starttime+111810-lapsetime))
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
          
            modulecrazzyfrog3.create();
       }
       else if((time>starttime+111810-lapsetime)&&(time<starttime+119227-lapsetime))
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
          
            moduleparabola.create();
       }
       else if((time>starttime+119227-lapsetime)&&(time<starttime+125606-lapsetime))
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
          
            moduleball_spot.create();
       }
       else if((time>starttime+125606-lapsetime)&&(time<starttime+131711-lapsetime))
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
         modulelastmridul.create() ;
           // modulecrazzyfrog2.create();
       }
       else if((time>starttime+131711-lapsetime)&&(time<starttime+133478-lapsetime))
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
          
            moduleRighthere.create();
       }
       else if((time>starttime+133478-lapsetime)&&(time<starttime+158590-lapsetime))
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
          
            modulemridul.create();
       }
       
       else if((time>starttime+158590-lapsetime)&&(time<starttime+201587-lapsetime))//168360 dna comes up,176610 rotation wanted
       {     
         if (loaded == false) 
          {
            loader();
            loaded = true;
          fill(0);
          rect(0,0,width,height);
          }
          fill(0);
          rect(0,0,width,height);  //yMovie1.play() ;
         
       }
       else if((time>starttime+201587-lapsetime)&&(time<starttime+233322-lapsetime))//168360 dna comes up,176610 rotation wanted
       {
         //myMovie1.pause();
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
          
           modulesunset.create();
       }
       else if((time>starttime+233322-lapsetime)&&(time<starttime+247188-lapsetime))//168360 dna comes up,176610 rotation wanted
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
          
           modulepianoend.create();
       }
      
  }
  else if(next==2)
  { noStroke();
          if (loaded == false) 
          {
            loader();
            loaded = true;
          fill(0);
          rect(0,0,width,height);
          }
          fill(0);
          rect(0,0,width,height);
          modulefinalpattern.create();
   
    //myMovie1.play();
  }
  else if(next==3)
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
  //if(once){lapsetime = lapsetime+40000;once = false;}
    modulefinalpattern.create();
  }
  else if(next==4)
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
  //if(once){lapsetime = lapsetime+70000;once = false;}
    moduleRighthere.create();
  }
  else if(next==5)
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
  //if(once){lapsetime = lapsetime+70000;once = false;}
    modulecrazzyfrog3.create();
  }
  else if(next==6)
  {
  
    //myMovie.play();
  }
}
void mousePressed() { 
  noLoop();
} 
void keyPressed()
{
  //modulesine.keypressed();
  if(key=='1')next++;
}

void loader() 
{
  map[0]=33;
  map[1]=89;
  map[2]=11;
  map[3]=100;
  map[4]=147;
  map[5]=58;
  map[6]=23;
  map[7]=50;
  map[8]=131;
  map[9]=0;
  map[10]=73;
  map[11]=155;
  map[12]=116;
  map[13]=81;
  map[14]=46;
  map[15]=14;
  map[16]=110;
  map[17]=30;
  map[18]=64;
  map[19]=139;
  map[20]=94;
  map[21]=13;
  map[22]=124;
  map[23]=51;
  map[24]=0;
  map[25]=21;
  map[26]=76;
  map[27]=80;
  map[28]=58;
  map[29]=159;
  map[30]=31;
  map[31]=10;
  map[32]=103;
  map[33]=90;
  map[34]=144;
  map[35]=40;
  map[36]=65;
  map[37]=113;
  map[38]=18;
  map[39]=48;
  map[40]=132;
  map[41]=71;
  map[42]=3;
  map[43]=26;
  map[44]=84;
  map[45]=151;
  map[46]=98;
  map[47]=56;
  map[48]=10;
  map[49]=36;
  map[50]=120;
  map[51]=160;
  map[52]=16;
  map[53]=140;
  map[54]=66;
  map[55]=45;
  map[56]=108;
  map[57]=27;
  map[58]=78;
  map[59]=5;
  map[60]=148;
  map[61]=92;
  map[62]=127;
  map[63]=54;
  map[64]=12;
  map[65]=34;
  map[66]=116;
  map[67]=20;
  map[68]=68;
  map[69]=101;
  map[70]=136;
  map[71]=86;
  map[72]=42;
  map[73]=153;
  map[74]=1;
  map[75]=60;
  map[76]=8;
  map[77]=122;
  map[78]=24;
  map[79]=74;
  map[80]=147;
  map[81]=14;
  map[82]=105;
  map[83]=48;
  map[84]=130;
  map[85]=3;
  map[86]=95;
  map[87]=33;
  map[88]=66;
  map[89]=82;
  map[90]=137;
  map[91]=22;
  map[92]=115;
  map[93]=6;
  map[94]=38;
  map[95]=157;
  map[96]=54;
  map[97]=107;
  map[98]=15;
  map[99]=70;
  map[100]=24;
  map[101]=91;
  map[102]=145;
  map[103]=121;
  map[104]=131;
  map[105]=4;
  map[106]=46;
  map[107]=79;
  map[108]=10;
  map[109]=99;
  map[110]=64;
  map[111]=31;
  map[112]=112;
  map[113]=153;
  map[114]=19;
  map[115]=139;
  map[116]=53;
  map[117]=7;
  map[118]=85;
  map[119]=37;
  map[120]=71;
  map[121]=128;
  map[122]=26;
  map[123]=105;
  map[124]=13;
  map[125]=144;
  map[126]=43;
  map[127]=1;
  map[128]=82;
  map[129]=17;
  map[130]=153;
  map[131]=93;
  map[132]=68;
  map[133]=50;
  map[134]=102;
  map[135]=37;
  map[136]=9;
  map[137]=145;
  map[138]=112;
  map[139]=28;
  map[140]=120;
  map[141]=56;
  map[142]=20;
  map[143]=158;
  map[144]=78;
  map[145]=5;
  map[146]=46;
  map[147]=134;
  map[148]=34;
  map[149]=98;
  map[150]=11;
  map[151]=64;
  map[152]=125;
  map[153]=88;
  map[154]=26;
  map[155]=108;
  map[156]=18;
  map[157]=72;
  map[158]=40;
  map[159]=143;
  map[160]=55;
  map[161]=7;
  map[162]=156;
  map[163]=116;
  map[164]=22;
  map[165]=137;
  map[166]=82;
  map[167]=66;
  map[168]=33;
  map[169]=95;
  map[170]=3;
  map[171]=130;
  map[172]=48;
  map[173]=105;
  map[174]=14;
  map[175]=147;
  map[176]=74;
  map[177]=24;
  map[178]=122;
  map[179]=8;
  map[180]=114;
  map[181]=66;
  map[182]=130;
  map[183]=30;
  map[184]=100;
  map[185]=43;
  map[186]=144;
  map[187]=16;
  map[188]=78;
  map[189]=57;
  map[190]=9;
  map[191]=123;
  map[192]=153;
  map[193]=27;
  map[194]=110;
  map[195]=39;
  map[196]=3;
  map[197]=68;
  map[198]=136;
  map[199]=51;
  map[200]=19;
  map[201]=96;
  map[202]=146;
  map[203]=31;
  map[204]=84;
  map[205]=119;
  map[206]=12;
  map[207]=157;
  map[208]=62;
  map[209]=116;
  map[210]=43;
  map[211]=129;
  map[212]=75;
  map[213]=26;
  map[214]=5;
  map[215]=54;
  map[216]=92;
  map[217]=140;
  map[218]=36;
  map[219]=114;
  map[220]=20;
  map[221]=0;
  map[222]=152;
  map[223]=70;
  map[224]=82;
  map[225]=49;
  map[226]=101;
  map[227]=60;
  map[228]=126;
  map[229]=133;
  map[230]=14;
  map[231]=0;
  map[232]=30;
  map[233]=42;
  map[234]=23;
  map[235]=86;
  map[236]=16;
  map[237]=56;
  map[238]=43;
  map[239]=132;
  map[240]=104;
  map[241]=34;
  map[242]=11;
  map[243]=65;
  map[244]=150;
  map[245]=121;
  map[246]=24;
  map[247]=81;
  map[248]=142;
  map[249]=94;
  map[250]=159;
  map[251]=57;
  map[252]=147;
  map[253]=112;
  map[254]=5;
  map[255]=138;



  for (int j=0; j<wire; j++) {                         // calculates x and z coordinates of each wire
    float xmap = (0 - (map_length / 2)) + j*map_unit;
    float hyp = sqrt(sq(xmap) + sq(depth));
    z_by_ind[j] = depth - map[j]*depth_unit;
    x_by_ind[j] = xmap - xmap*map[j]/depth*depth_unit;
  }
}
void movieEvent(Movie m) {
  m.read();
}


float t=0;
void playSine()
{
  for (int i=0; i<wire; i++)
  {
    float y;
    y=12*sin(0.1*x_by_ind[i]+0.1*t);
    fill(27,189,111);
    float y_bot_coord=50+y;
    float y_top_coord=50+y+1;
    float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
    float y_top_proj = y_top_coord*depth/z_by_ind[i];
    float y_height_proj = y_top_proj-y_bot_proj;
    rect(i*width/wire, width - (ppi*y_top_proj), 3, ppi*y_height_proj);
  }
  t+=0.1;
}

