function solucion = AdamsBashforth(f,a,b,y,y1,n)
  f = strcat('@(x,y)',f);
  f = str2func(f);
  
  h = (b-a)/(n-1);
  solucion = [a y ; a+h y1];
  fila = 3;
  
  for i=a+2*h : h : b
    solucion(fila,1) = i;
    solucion(fila,2) = solucion(fila-1,2) + (h/12)*(23*f(solucion(fila-1,1),solucion(fila-1,2)) - 16*f(solucion(fila-2,1),solucion(fila-2,2)) + 5*f(solucion(fila-3,1),solucion(fila-3,2)));
  endfor
endfunction


%Existe un error en el cálculo de las Y (se sale del bound)