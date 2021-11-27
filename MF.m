function [Mu]=MF(input,MF_Type)
   switch MF_Type
     case 'Triangle'        
        Mu=MF_Triangle(input);
     otherwise
        warning('Unexpected Input type!');
    end
end