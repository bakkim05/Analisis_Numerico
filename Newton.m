function [m,a] = Newton(ptx, pty)
  
  pkg load symbolic;
  syms x;
  
  n = length(ptx);
  m = zeros(n,n);
  m(:,1) = pty';
  
  for c = 2 : n
    for f = c : n
      m(f,c) = (m(f,c-1)-m(f-1,c-1))/(ptx(f)-ptx(f-c+1));
    endfor
  endfor
  
  a = m(n,n);
  for k = (n-1):-1:1
    a = conv(a, poly(pty(k)));
    v = length(a);
    a(v) += m(k,k);
  endfor
  
endfunction
