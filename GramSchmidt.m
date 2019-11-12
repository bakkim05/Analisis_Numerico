function [Q,R] = GramSchmidt(A)
  n = length(A);
  Q = zeros(n);
  R = zeros(n);
  u = zeros(n,1);
  
  u(:,1) = A(:,1);
  Q(:,1) = u(:,1)/norm(u(:,1));
  
  for i=2 : n
    aux = 0;
    for j=1 : i-1
      aux -= dot(A(:,i),Q(:,j))*Q(:,j);
    endfor
    u(:,i) = A(:,i) + aux;
    Q(:,i) = u(:,i)/norm(u(:,i));
  endfor
  
  R = Q'*A;
  
endfunction
