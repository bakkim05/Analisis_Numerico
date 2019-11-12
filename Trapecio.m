function sol = Trapecio(a,b,n,f)
pkg load symbolic;
syms x;

  f = strcat('@(x)',f);
  f = str2func(f);

  sol = 0;

  h = (b-a)/n;
  for i=2:n
    sol += f(a+(i*h));
  endfor
  sol = h*(((f(a)+f(b))/2) + sol);
endfunction
