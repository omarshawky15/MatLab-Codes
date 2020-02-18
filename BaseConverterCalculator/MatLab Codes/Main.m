format long g;
number =input ('Enter Number to transform :','s');
base_1 = int64(input ('Enter Base of the previous number :'));
base_2 = int64(input ('Enter Base you want to transfer to :'));
primResult = int64(0);
result ='';

%checking if number is valid with respect to base_1
if(~isValidNumBase(number,base_1))
    fprintf('Number isn''t valid relative to %d !!\nprogram will terminate now\n',base_1)
    return
end
if(base_1 == base_2)
    fprintf('two bases are the same !!\nprogram will terminate now\n')
    return
end
%Transforming number from base_1 to base 10 
switch (base_1)
    case {2,8,10,16} 
        primResult = int64(toDec(number,base_1));
    otherwise 
            fprintf('not a valid base_1\nprogram will terminate now\n');
            return
end
%Transforming number from base 10 to base_2
switch (base_2)
    case {2,8,10,16}
        result = toBn(primResult,base_2);
    otherwise 
            fprintf('not a valid base_2\nprogram will terminate now\n');
            return
end
%final output
fprintf('(%s)%d = (%s)%d\n',number,base_1 , result,base_2);
