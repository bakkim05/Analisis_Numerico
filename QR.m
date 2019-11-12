function A = QR(A,tol)
  n = length(A);
  while(QRError(A,n) > tol)
    [Q,R] = GramSchmidt(A);
    A = R*Q;
  endwhile
endfunction
