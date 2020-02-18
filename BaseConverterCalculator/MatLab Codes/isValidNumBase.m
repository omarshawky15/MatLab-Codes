%Checks validity of num with respect to base
function b = isValidNumBase(num,base)
temp =num;
for i=1 :length(temp)
    c = temp(i);
    val = charToVal(c);
    if(val >= base || val==-1)
        b = false ;
        return ;
    end 
end
b= true ;
return ;
end
