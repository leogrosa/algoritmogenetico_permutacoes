
function fak = int_to_fak(i, length)
    %Convert integer I to little endian FAK representation
    %    of len LENGTH, which is a list of integers."""
    fak = [];
    for k = 1:length
        fak = append(fak,mod(i,k+1));
        i = idivide(i,k+1);
    end
end
    
    

