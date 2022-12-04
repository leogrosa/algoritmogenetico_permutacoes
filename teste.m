clear 
close all

%%
Alphabet = ['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J'];
n_symbols = length(Alphabet);
n_bits = 1 + cast((log(factorial(n_symbols)-1) / log(2)),'uint16');

%(Alphabet, "ABCDEFGHJI", "BACDEFGHIJ", "JABCDEFGHI",
             %"BCDEFGHIJA", "JIHGFEDCBA"):
 perm = ['J' 'I' 'H' 'G' 'F' 'E' 'D' 'C' 'B' 'A'];
%for perm = 1:length(Alphabet)
    disp(perm)
    fak = perm_to_fak (perm, Alphabet);
    disp(fak)
    i = fak_to_int(fak);
    %i= compose(dec2bin(i));
    disp(sprintf('%07d',i));
%end