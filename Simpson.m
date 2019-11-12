function sol = Trapecio(a,b,n,f)
pkg load symbolic;
syms x;

  f = strcat('@(x)',f);
  f = str2func(f);

  sol = 0;
  parte1 = 0;
  parte2 = 0;

  h = (b-a)/n;
  
  for j = 2 : (n/2)
    parte1 += f(2*j);
  endfor
  
  for k = 1 : (n/2)
    parte2 += f((2*k)-1);
  endfor
  
  sol = (h/3)*(f(a) + 2*parte1 + 4*parte2 + f(b))

endfunction


% Tiene un error y no se adonde.
% Comportamiento Divergente en las Parte 1 y Parte 2.