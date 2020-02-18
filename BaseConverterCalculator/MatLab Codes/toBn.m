%Transorms num to base_n
function res = toBn (num,base)
res ='' ;
temp = num;
while temp ~= 0
    m = mod(temp,base);
    c ='';
    if(m>=10)
        c = char('A'-10);
    else 
        c= '0';
    end
    res = strcat(char(c+ m ),res);
temp =floor(double(temp)/double(base));
end
