function p = Lagrange(ptx,pty)

pkg load symbolic;
syms x;

L = 1;
p = 0;

n = length(ptx);

for k=1:n
  for j=1:n
    if (k != j)
    aux = (x - ptx(j)) / (ptx(k) - ptx(j));
    L = L * aux;
    endif
  endfor
  p += L * pty(k);
  L = 1;
endfor

endfunction