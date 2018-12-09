 % detecting strategy for conflict resoution when conflict occures 
 
 %$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
 
 % we have detect the level of confict if high or low 
   if (conf1>1) 
   flagc1h=1;          % when confidnce high
   else flagc1l=1;     % when confidnce low
   end
   
   if (conf2>1) 
   flagc2h=1;          % when confidnce high
   else  flagc2l=1;    % when confidnce low
   end    
  
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
 %%% detecting stratgy for conflcit resolution
  char stratgy[10,20];
  
     % first type: when both agents high confidnce with strong conflcit
   
   if ((flagc1h==1) && (flagc2h==1) &&(cs1>1))
       stratgy(1,:)=['Arbiteration']; 
       m=mesarb;
       
       set(handles.s1,'string',stratgy(1,:));
       set(handles.m1,'string',m);
       set(handles.tt1,'string',2);
          
      % seconed type: when both agents low confidnce with strong conflcit        
      
    elseif ((flagc1l==1) && (flagc2l==1) &&(cs1>1))
       stratgy(1,:)=['Arbiteration']; 
       m=mesfor;
       
       set(handles.s1,'string',stratgy(1,:));
       set(handles.m1,'string',m);
       set(handles.tt1,'string',2);
   
       % when one agent have low confidnce and other have high confidence
       % with strong conflcit    
        
     elseif ((flagc1h==1) && (flagc2l==1) &&(cs1>1))
     
       stratgy(1,:)=['Forcing']; 
       m=mesfor;
       
       set(handles.s1,'string',stratgy(1,:));
       set(handles.m1,'string',m);
       set(handles.tt1,'string',2);
  
      % when one agent have low confidnce and other have high confidence
      % with strong conflcit
      
      elseif ((flagc1l==1) && (flagc2h==1) &&(cs1>1))
       
         stratgy(1,:)=['Forcing']; 
         m=mesfor;
       
         set(handles.s1,'string',stratgy(1,:));
         set(handles.m1,'string',m);
         set(handles.tt1,'string',2);
   
        % when both agents high confidnce with weak conflcit
       elseif ((flagc1h==1) && (flagc2h==1) &&(cs1<=1))
    
          stratgy(1,:)=['Negotiation']; 
          m=mesnog;
       
          set(handles.s1,'string',stratgy(1,:));
          set(handles.m1,'string',m);
          set(handles.tt1,'string',5);
          
         % when both agents low confidnce with weak conflcit
   
         elseif ((flagc1l==1) && (flagc2l==1) &&(cs1<=1))
     
           stratgy(1,:)=['Ignoring']; 
           m=mesign;
       
           set(handles.s1,'string',stratgy(1,:));
           set(handles.m1,'string',m);
           set(handles.tt1,'string',2);
        
        % when one agent have low confidnce and other have high confidence
        % with weak conflcit
         elseif ((flagc1l==1) && (flagc2h==1) &&(cs1<=1))
      
             stratgy(1,:)=['Submitting']; 
             m=messub;
        
             set(handles.s1,'string',stratgy(1,:));
             set(handles.m1,'string',m);
             set(handles.tt1,'string',2);
        % when one agent have low confidnce and other have high confidence
        % with weak conflcit
          
         elseif ((flagc1h==1) && (flagc2l==1) &&(cs1<=1))
    
             stratgy(1,:)=['Submitting']; 
             m=messub;
       
             set(handles.s1,'string',stratgy(1,:));
             set(handles.m1,'string',m);
             set(handles.tt1,'string',2);    
         end
   
    % second case we assume both conflcting agents have high conficnce
    % third case we assume both conflcting agents have high conficnce
   
     
   if (conf1>conf2) confr=conf1  % when confidnce high
   else    confr=conf2;  
   end
   
   %$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
   if (confr>1) flagcrh=1
   else flagcrl=1;
   end
    %$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
   if (conf3>1) flagc3h=1;
   else    flagc3l=1;
   end
   
   if (confr>1) confrh=1;
   else     confrl=1;
   end
   %%%%%%%%%%%%%%%%%%%%%%
   
   if ((flagcrh==1) && (flagc3h==1) &&(cs2>1))
       
   % when both agents high confidnce with strong conflcit
       
       stratgy(1,:)=['Arbiteration']; 
       m=mesarb;
       
       set(handles.s2,'string',stratgy(1,:));
       set(handles.m2,'string',m);
       set(handles.tt2,'string',2);
          
               
   elseif ((flagcrl==1) && (flagc3l==1) &&(cs2>1))
       
       % when both agents low confidnce with strong conflcit
       stratgy(1,:)=['Arbiteration']; 
       m=mesfor;
       
       set(handles.s2,'string',stratgy(1,:));
       set(handles.m2,'string',m);
       set(handles.tt2,'string',2);
             
        
   elseif ((flagcrh==1) && (flagc3l==1) &&(cs2>1))
       % when one agent have low confidnce and other have high confidence
       % with strong conflcit
       stratgy(1,:)=['Forcing']; 
       m=mesfor;
       
       set(handles.s2,'string',stratgy(1,:));
       set(handles.m2,'string',m);
       set(handles.tt2,'string',2);
                    
   elseif ((flagcrl==1) && (flagc3h==1) &&(cs2>1))
       
   % when one agent have low confidnce and other have high confidence
   % with strong conflcit
       stratgy(1,:)=['Forcing']; 
       m=mesfor;
       
       set(handles.s2,'string',stratgy(1,:));
       set(handles.m2,'string',m);
       set(handles.tt2,'string',2);
   
       
   elseif ((flagcrh==1) && (flagc3h==1) &&(cs2<=1))
       % when both agents high confidnce with weak conflcit
       stratgy(1,:)=['Negotiation']; 
       m=mesnog;
       
       set(handles.s2,'string',stratgy(1,:));
       set(handles.m2,'string',m);
       set(handles.tt2,'string',5);
       
   
   elseif ((flagcrl==1) && (flagc3l==1) &&(cs2<=1))
       % when both agents low confidnce with weak conflcit
       stratgy(1,:)=['Ignoring']; 
       m=mesign;
       
       set(handles.s2,'string',stratgy(1,:));
       set(handles.m2,'string',m);
       set(handles.tt2,'string',2);
        
       
   elseif ((flagcrl==1) && (flagc3h==1) &&(cs2<=1))
       % when one agent have low confidnce and other have high confidence
   % with weak conflcit
       stratgy(1,:)=['Submitting']; 
       m=messub;
       
       set(handles.s2,'string',stratgy(1,:));
       set(handles.m2,'string',m);
       set(handles.tt2,'string',2);
        
          
   elseif ((flagcrh==1) && (flagc3l==1) &&(cs2<=1))
    % when one agent have low confidnce and other have high confidence
    % with weak conflcit
       stratgy(1,:)=['Submitting']; 
       m=messub;
       
       set(handles.s2,'string',stratgy(1,:));
       set(handles.m2,'string',m);
       set(handles.tt2,'string',2);
              
   end
     
   if (confr>conf3) confr=confr;
   else
       confr=conf3;
   end  
    
   %$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
   
   
     % third case we assume both conflcting agents have high conficnce
   
     
   if (confr<conf3) confr=conf3  % when confidnce high
   end
   
   if (confr>1)  flagrh=1;
   else  flagrl=1;
   end
   
   if (conf4>1) flagc4h=1;
   else   flagc4l=1;
   end
    
          % third case we assume both conflcting agents have high conficnce
     
   if ((flagcrh==1) && (flagc4h==1) &&(cs3>1))
   
     
   % when both agents high confidnce with strong conflcit
       
       stratgy(1,:)=['Arbiteration']; 
       m=mesarb;
       
       set(handles.s3,'string',stratgy(1,:));
       set(handles.m3,'string',m);
       set(handles.tt3,'string',2);
          
               
   elseif ((flagc1l==1) && (flagc2l==1) &&(cs3>1))
       
       % when both agents low confidnce with strong conflcit
       stratgy(1,:)=['Arbiteration']; 
       m=mesarb;
       
       set(handles.s3,'string',stratgy(1,:));
       set(handles.m3,'string',m);
       set(handles.tt3,'string',2);
             
        
   elseif ((flagc1h==1) && (flagc2l==1) &&(cs3>1))
       % when one agent have low confidnce and other have high confidence
       % with strong conflcit
       stratgy(1,:)=['Forcing']; 
       m=mesfor;
       
       set(handles.s3,'string',stratgy(1,:));
       set(handles.m3,'string',m);
       set(handles.tt3,'string',2);
                    
   elseif ((flagc1l==1) && (flagc2h==1) &&(cs3>1))
       
   % when one agent have low confidnce and other have high confidence
   % with strong conflcit
       stratgy(1,:)=['Forcing']; 
       m=mesfor;
       
       set(handles.s3,'string',stratgy(1,:));
       set(handles.m3,'string',m);
       set(handles.tt3,'string',2);
   
       
   elseif ((flagc1h==1) && (flagc2h==1) &&(cs3<=1))
       % when both agents high confidnce with weak conflcit
       stratgy(1,:)=['Negotiation']; 
       m=mesnog;
       
       set(handles.s3,'string',stratgy(1,:));
       set(handles.m3,'string',m);
       set(handles.tt3,'string',5);
       
   
   elseif ((flagc1l==1) && (flagc2l==1) &&(cs3<=1))
       % when both agents low confidnce with weak conflcit
       stratgy(1,:)=['Ignoring']; 
       m=mesign;
       
       set(handles.s3,'string',stratgy(1,:));
       set(handles.m3,'string',m);
       set(handles.tt3,'string',2);
        
       
   elseif ((flagc1l==1) && (flagc2h==1) &&(cs3<=1))
       % when one agent have low confidnce and other have high confidence
   % with weak conflcit
        stratgy(1,:)=['Submitting']; 
       m=messub;
       
       set(handles.s3,'string',stratgy(1,:));
       set(handles.m3,'string',m);
       set(handles.tt3,'string',2);
        
          
   elseif ((flagc1h==1) && (flagc2l==1) &&(cs3<=1))
    % when one agent have low confidnce and other have high confidence
    % with weak conflcit
       stratgy(1,:)=['Submitting']; 
       m=messub;
       
       set(handles.s3,'string',stratgy(1,:));
       set(handles.m3,'string',m);
       set(handles.tt3,'string',2);
       
        
   end

 %$$$$$$$$$$$$$$$$$$$$$$$$$$$$