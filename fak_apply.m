
function  perm = fak_apply(fak, it0)
    %Apply little endian FAK to iterable IT0.
    %assert (len(fak) == len(it0))
    it = it0;
    perm = [];
    for k = 1:length(fak)
        a_k = fak(k);
        %assert (a_k <= k and a_k >= 0)
        perm = [perm , it(a_k+1)];
        %del it[a_k]
    end
    %# Let returned permutation be of same type like IT0.
    %return "".join(perm) if isinstance(it0,str) else it0.__class__(perm)
    perm = fliplr(perm);
 end