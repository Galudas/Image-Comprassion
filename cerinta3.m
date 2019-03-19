%RATA ANDREI 313CD
function [A_k, S] = cerinta3(image, k)
  A = imread(image);
  [m, n] = size(A);
  A = double(A); % se face conversia pentru a obtine numere reale
  coloana = 1;
  for i = 1:m
    s = 0;
    for j = 1:n
      s = s + A(i,j);
    endfor 
    
    u(coloana) = s/n; % aici se calculeaza media 
    coloana++;
  endfor  
  u = u'; % aici am transpus deoarece am avut nevoie ca 'u' sa fie vect col.
  %pasul 1
  for j = 1:n
    A(:,j) = A(:,j) - u;
  endfor
  %pasul 2
  Z = A'/sqrt(m-1);
  %pasul 3  
  [U,S,V] = svd(Z);
  %pasul 4   
  for i = 1:k
    W(:,i) = V(:,i);
  endfor
  %pasul 5 
   Y = W'*A;
  %pasul 6
   A_k = W*Y + u; 
  %pasul 7 
endfunction 