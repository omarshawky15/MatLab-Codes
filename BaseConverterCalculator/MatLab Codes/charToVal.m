%get the value that corresponds to c 
function val = charToVal(c)
val = int64(c);
    if val <58 && val >47
        val = val - int64('0');
    else 
    if val <71 && val >64
        val = val - int64('A')+10 ;
    else val = -1;
    end 
    end
end