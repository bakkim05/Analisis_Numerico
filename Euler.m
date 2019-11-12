function respuesta = Euler(f,a,b,y,n)
  
  f = strcat ('@(x,y)',f);
  f = str2func(f);
  
  h = (b-a)/(n-1);
  
  respuesta = [a y];
  fila = 2;
  for i=(a+h):h:b
    respuesta(fila,1) = i;
    respuesta(fila,2) = respuesta(fila-1,2) + h*(f(respuesta(fila-1,1),respuesta(fila-1,2)));
    fila += 1;
  endfor
  
  
endfunction
