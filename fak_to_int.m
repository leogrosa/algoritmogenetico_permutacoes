
function i = fak_to_int(fak)
    %Convert litte endian FAK to integer
    i = 0;
    B_k = 1;
    for k = 1:length(fak)
        i = i + (fak(k) * B_k);
        B_k = B_k*(k+1);
    end
end