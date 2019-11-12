function sum1 = Pruebas(A, n)
  sum1 = 0;
  for i = 2 : n
    sum2 = 0;
    for j = 1 : i - 1
      sum2 = sum2 + abs(A(i, j));
    endfor
    sum1 = sum1 + sum2;
  endfor
endfunction



##function [xk, ck] = Pruebas(A, x0, iter)
##  xk = x0;
##  yk = A * xk;
##  ck = abs(max(yk));
##  xNext = 1 / ck * yk;
##  % while (abs(xNext - xk) > tol)
##  for i = 1 : iter
##    yk = A * xk;
##    ck = abs(max(yk));
##    xNext = 1 / ck * yk;
##    xk = xNext;
##  endfor
##  % endwhile
##endfunction

##function [Q,R] = GramSchmidt (A)
##  n = length(A);
##  Q = zeros(n);
##  R = zeros(n);
##  u1 = A(:,1);
##  Q(:,1) = u1 / norm(u1);
##  
##  for k = 2: n
##    uk = A(:,k) - GramSchmidtSum(A,Q,k,n);
##    Q(:,k) = uk/ norm(uk);
##  endfor
##  R = Q' * A;
##endfunction
##
##
##
##function result = GramSchmidtSum(A,Q,k,n)
##  result = 0;
##  for i = 1 : k-1
##    productSum = 0;
##    for j = 1 :n
##      productSum = productSum + A(:,k)(j) * Q(:,i)(j);
##    endfor
##    result += productSum * Q(:,i);
##  endfor
##endfunction