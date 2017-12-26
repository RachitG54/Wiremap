class fireworks
{
  float timetest = 0;  
  crackers cracker1 = new crackers();
  crackers[] arrcracker = new crackers[wire];
  int[] nos1 = new int[7];
  boolean[] nos1true = new boolean[7];
  int[] nos2 = new int[7];
  boolean[] nos2true = new boolean[7];
  fireworks()
  {
    cracker1.initialize(120);
    for(int i =0;i<wire;i++)
    {
      arrcracker[i] = new crackers();
      arrcracker[i].initialize(i);
    }
    for(int i=0;i<7;i++)
    {nos1true[i]=nos2true[i]=true;
    }
  }
  void create()
  {
    
    if((time>starttime+222958+timetest-lapsetime)&&(time<starttime+timetest+228455-lapsetime))
       {
          
         if((time>starttime+222958+timetest-lapsetime)&&(time<starttime+timetest+225701-lapsetime))
         {    
              arrcracker[7].create();arrcracker[38].create(); arrcracker[166].create();arrcracker[108].create();arrcracker[56].create();           
         }
         else if((time>starttime+225701+timetest-lapsetime)&&(time<starttime+timetest+228455-lapsetime))
         {
           arrcracker[7].create();arrcracker[38].create(); arrcracker[166].create();arrcracker[108].create();arrcracker[56].create();
           arrcracker[27].create();arrcracker[238].create(); arrcracker[96].create();arrcracker[8].create();arrcracker[134].create();
         }
         
       }
       
    else if((time>starttime+timetest+228455-lapsetime)&&(time<starttime+timetest+231000-lapsetime))
       {
         arrcracker[7].create();arrcracker[38].create(); arrcracker[166].create();arrcracker[108].create();arrcracker[56].create();
         arrcracker[27].create();arrcracker[238].create(); arrcracker[96].create();arrcracker[8].create();arrcracker[134].create();
        // float currmodtime = (time-starttime-240051+lapsetime+timetest);
         
         if((time>starttime+228455+timetest-lapsetime)&&(time<starttime+timetest+229800-lapsetime))
         {    
              arrcracker[57].create();arrcracker[3].create(); arrcracker[200].create();arrcracker[254].create();arrcracker[128].create();           
         }
         else if((time>starttime+229800+timetest-lapsetime)&&(time<starttime+timetest+231000-lapsetime))
         {
           arrcracker[57].create();arrcracker[3].create(); arrcracker[200].create();arrcracker[254].create();arrcracker[128].create();      
           arrcracker[66].create();arrcracker[211].create(); arrcracker[140].create();arrcracker[100].create();arrcracker[115].create();
         }
        
       }
  }    
}
