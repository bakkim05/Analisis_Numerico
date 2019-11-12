function respuesta = QRError (A,n)
  respuesta = 0;
  for i=2 : n
    for j=1 : i-1
      respuesta += abs(A(i,j));
    endfor
  endfor
endfunction
