    %Trinagle-shaped Membership Function
function [Mu]=MF_Triangle(x,Input_Name)
    switch Input_Name
     case 'W'
        Mu=Weight(x);
     case 'b'
        Mu=Visible_bias(x);
     case 'c'
        Mu=Hidden_bias(x);
     otherwise
        warning('Unexpected Input type!');
    end
end
%Weight MF
function [Mu]=Weight(x)
    WL=-1;
    WR=1;
    WM=0;
    Mu=Triangle(x,WL,WM,WR);
end
%Visible_bias MF
function [Mu]=Visible_bias(x)
    bL=0;
    bR=1;
    bM=0.5;
    Mu=Triangle(x,bL,bM,bR);
end
%Hidden_bias MF
function [Mu]=Hidden_bias(x)
    cL=0;
    cR=1;
    cM=0.5;
    Mu=Triangle(x,cL,cM,cR);
end
function [Mu]=Triangle(x,a,b,c)
    if (x<=a)
        Mu=0;
    end
    if(a<=x && x<=b)
        Mu=(x-a)/(b-a);    
    end
    if(b<=x && x<=c)
        Mu=(c-x)/(c-b);    
    end
    if (c<=x)
        Mu=0;
    end
end