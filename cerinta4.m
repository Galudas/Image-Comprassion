function [A_k S] = cerinta4(image,k)
  A = imread(image);
  [m, n] = size(A);
  A = double(A); % se face conversia pentru a obt numere reale 
  coloana = 1;
  for i = 1:m
    s = 0;
    for j = 1:n
      s = s + A(i,j);
    endfor
    u(coloana) = s/n; % se calculeaza media 
    coloana++;
  endfor
  %pasul 1
  u = u';
  for j = 1:n
    A(:,j) = A(:,j) - u;
  endfor
  %pasul 2
  Z = 1/(n-1)*A*A';
  %pasul 3 
  [V, S] = eig(Z);
  %pasul 4 
  V = double(V);
  for i = 1:k
    W(:,i) = V(:,i);
  endfor
  %pasul 5 
   Y = W'*A;
  %pasul 6
   A_k = W*Y + u; 
  %pasul 7
  %OBS !!! Singura diferenta fata de cerinta 3 este modul de obtinere a lui 'V'
  %EIG vs SVD
  
  
  
  
  
endfunction