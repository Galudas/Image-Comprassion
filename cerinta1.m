%RATA ANDREI 313CD 
function A_k = cerinta1(image, k)
A = imread(image);
[m,n] = size(A);
A_k = A;
[U,S,V] = svd(A);
V = V';
[m_U, n_U] = size(U);
[m_S, n_S] = size(S);
[m_V, n_V] = size(V);
%pentru verifcare  
for i = 1:m
   for j = 1:k
     U_k(i,j) = U(i,j);
    endfor
endfor
%se calculeaza U_k
for i = 1:k
   for j = 1:k
     S_k(i,j) = S(i,j);
   endfor
endfor
%se calculeaza S_k
for i = 1:k
   for j = 1:n
     V_k(i,j) = V(i,j);
    endfor
endfor
%se calculeaza V_k 
A_k = U_k*S_k*V_k;

endfunction