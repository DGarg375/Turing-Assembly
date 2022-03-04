states =              {s,q0,q1,q2,q3,q4,q5,q6,q7,q8,qA,qR}
input_alphabet =      {0,1,:,^,L,M,x,y,A}
tape_alphabet_extra = {_,$}
start_state =         s
accept_state =        qA
reject_state =        qR
num_tapes =           5
delta =
//Common before branching
  s ,^____ -> q0,^$$$$,RSSSS;
  q0,????? -> q0,?????,SSLLL;
  q0,_$$$$ -> qA,_$$$$,SSSSR;
  
//load function
  q0,L$$$$ -> q1,L$$$$,RSSSR;
  q1,0$$$? -> q1,0$$$0,RSSSR;
  q1,1$$$? -> q1,1$$$1,RSSSR;
  q1,:$$$_ -> q0,:$$$_,RSSSL;
  
//M function
  q0,M$$$$ -> q2,M$$$$,RSSSS;
  
  //Mx function
    q2,x$$$$ -> q3,x$$$$,RSRSR;
    q3,:$?$0 -> q3,:$0$0,SSRSR;
    q3,:$?$1 -> q3,:$1$1,SSRSR;
    q3,:$_$_ -> q0,:$_$_,RSLSL;
    
  //My function
    q2,y$$$$ -> q4,y$$$$,RSSRR;
    q4,:$$?0 -> q4,:$$00,SSSRR;
    q4,:$$?1 -> q4,:$$11,SSSRR;
    q4,:$$__ -> q0,:$$__,RSSLL;
    
//A function
  q0,A$$$$ -> q5,A$$$$,RRRRR;
  q5,:?00? -> q6,:?000,SSRRR;
  q5,:?01? -> q6,:?011,SSRRR;
  q5,:?10? -> q6,:?101,SSRRR;
  q5,:?11? -> q6,:?110,SSRRR;
  q6,:?00? -> q6,:0000,SRRRR;
  q6,:?01? -> q6,:0011,SRRRR;
  q6,:?10? -> q6,:0101,SRRRR;
  q6,:?11? -> q6,:1110,SRRRR;
  q6,:?___ -> q7,:0___,SSLLL;
  q7,:0??0 -> q7,:0??0,SLLLL;
  q7,:0??1 -> q7,:0??1,SLLLL;
  q7,:1??0 -> q7,:1??1,SLLLL;
  q7,:1??1 -> q8,:1??0,SLLLL;
  q8,:0??? -> q7,:1???,SSSSS;
  q7,:$$$$ -> q0,:$$$$,RSSSS;
  q8,:$$$$ -> q7,:$$$$,SSSSS;