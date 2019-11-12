function solucion = RungeKutta(f,a,b,y,n)
  f = strcat('@(x,y)',f);
  f = str2func(f);
  
  h = (b-a)/(n-1);
  solucion = [a y 0 0];
  fila = 2;
  
  for i=a+h:h:b
    solucion(fila,1) = i;
    solucion(fila,3) = f(solucion(fila-1,1),solucion(fila-1,2));
    solucion(fila,4) = f(solucion(fila-1,1)+(h/2),solucion(fila-1,2) + (h*(solucion(fila-1,3)/2)));
    solucion(fila,2) = solucion(fila-1,2) + h*solucion(fila,4);
    fila += 1;
  endfor
endfunction
