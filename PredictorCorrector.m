function solucion = PredictorCorrector(f,a,b,y,n)
  f = strcat('@(x,y)',f);
  f = str2func(f);
  
  h = (b-a)/(n-1);
  
  solucion = [a y y];
  fila = 2;
  
  for i=a+h:h:b
    solucion(fila,1) = i;
    solucion(fila,2) = solucion(fila-1,3) + h*f(solucion(fila-1,1),solucion(fila-1,3));
    solucion(fila,3) = solucion(fila-1,3) + h*(f(solucion(fila-1,1),solucion(fila-1,3))+f(solucion(fila,1),solucion(fila,2)))/2;
    fila += 1;
  endfor
endfunction
