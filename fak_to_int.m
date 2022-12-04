
function i = fak_to_int(fak)
    %Convert litte endian FAK to integer
    i = 0;
    B_k = 1;
    for k = 0:length(fak)-1
        i = i + (fak(k+1) * B_k);
        B_k = B_k*(k+1);
    end
    
end