function [WL_U,WR_U,WL_L,WR_L,bL_U,bR_U,bL_L,bR_L,cL_U,cR_U,cL_L,cR_L,WcL_U,WcR_U,WcL_L,WcR_L,ccL_U,ccR_U,ccL_L,ccR_L]=init(m,n,N_classes)
% W
WL_U = 0.1* unifrnd(-1,0,[n,m]);
WR_U = abs(WL_U);

WL_L=unifrnd(WL_U,0,[n,m]);
WR_L=abs(WL_L);

if(WL_U<WL_L)
   disp('WL is Ok') 
end
if(WR_L<WR_U)
   disp('WR is Ok') 
end

% b
bL_U = 0.1*unifrnd(0,0.5,[1,n]);
bR_U = abs(0.5-bL_U)+0.5;

bL_L = unifrnd(bL_U,0.5,[1,n]);
bR_L = abs(0.5-bL_L)+0.5;

if(bL_U<bL_L)
   disp('bL is Ok') 
end
if(bR_L<bR_U )
   disp('bR is Ok') 
end

% c
cL_U = 0.1*unifrnd(0,0.5,[1,m]);
cR_U = abs(0.5-cL_U)+0.5;

cL_L = unifrnd(cL_U,0.5,[1,m]);
cR_L = abs(0.5-cL_L)+0.5;

if(cL_U<cL_L)
   disp('cL is Ok') 
end
if(cR_L<cR_U )
   disp('cR is Ok') 
end

% Wc
WcL_U = 0.1* unifrnd(-1,0,[N_classes,m]);
WcR_U = abs(WcL_U);

WcL_L=unifrnd(WcL_U,0,[N_classes,m]);
WcR_L=abs(WcL_L);

if(WcL_U<WcL_L)
   disp('WcL is Ok') 
end
if(WcR_L<WcR_U)
   disp('WcR is Ok') 
end

% cc
ccL_U = 0.1*unifrnd(0,0.5,[1,N_classes]);
ccR_U = abs(0.5-ccL_U)+0.5;

ccL_L = unifrnd(ccL_U,0.5,[1,N_classes]);
ccR_L = abs(0.5-ccL_L)+0.5;

if(ccL_U<ccL_L)
   disp('ccL is Ok') 
end
if(ccR_L<ccR_U )
   disp('ccR is Ok') 
end

