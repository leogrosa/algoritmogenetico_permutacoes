

%%
function list = perm_to_fak(perm, it0)
    %"""Let PERM be a permutation of iterable IT0.  Return little endian FAK
    %   of respective permutation."""
    %assert (len(perm) == len(it0))
    it = it0;
    fak = [];
    for k = 1:length(perm)
        a_k = find(it == perm(k));
        %assert (a_k >= 0)
        fak = [fak,a_k-1];
        %del it[a_k]
        %it(it == a_k) = [];
    end
    list = fliplr(fak);
    
end