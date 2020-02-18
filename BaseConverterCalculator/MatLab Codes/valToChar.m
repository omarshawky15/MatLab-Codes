%get the char that corresponds to val 
%didn't have time to use it 1:34 Am
function c = valToChar(val)
    if val <10 && val >=0
        c = char(val)+'0';
    else 
    if val <16 && val >9
        c =char (val)+'A' ;
    end 
    end
end