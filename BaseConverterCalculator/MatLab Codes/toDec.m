%Transforms num to base 10 from 'base'
function res = toDec (num,base)
res =0 ;
temp = fliplr(num);
    for i = 1:length(temp)
    val = charToVal(temp(i));
    res = res + val*(base^(i-1));
    end
end
