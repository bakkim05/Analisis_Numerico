function [Vector,Valor] = Potencias (A,Vector,iter)
  for i=1:iter
    y = A*Vector;
    Valor = abs(max(y));
    Vector = y / Valor;
  endfor
endfunction
