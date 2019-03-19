%RATA ANDREI 313CD 
function cerinta2()
  A = imread("image3.gif");
  k = 100;
  [m,n] = size(A);
  [U,S,V] = svd(A);
  contor = 1;
  ok = 1;
  for i = 1:k
    for j = 1:k
     if i == j
      vector(contor) = S(i,j); %imi salvez aici elementele
                              %de pe diagonala principala din S;
      contor++;
     endif
   endfor
endfor
     vector = sort(vector, 'descend');%se sorteaza vectorul in ordine descrescatoare
     subplot(2,2,1);
     plot(vector);
     capat = min(m,n);
    aux = 1;
    while aux <= k
     suma1 = 0;
     suma2 = 0;
     for i = 1:aux
       suma1 = suma1 + S(i,i);% se calculeaza suma de la numarator
     endfor
     
     for i = 1:capat
        suma2 = suma2 + S(i,i); % se calculeaza suma de la numitor
     endfor
     task2(aux) = suma1/suma2;
     
     aux++;
   
     endwhile
     subplot(2,2,2);
     plot(task2);
     aux = 1;
     while aux <= k
       B = cerinta1("image3.gif", aux);
       B = double(B);% se transforma elementele matricii in numere reale
       A = double(A);% ---------''------''---------''--------''---------
       suma3 = 0;
       for i =1:m
         for j =1:n
           intermediar = A(i,j) - B(i,j);
           produs = intermediar*intermediar;
           suma3 = suma3 + produs;
           
         endfor
        endfor
      task3(aux) = suma3/(m*n);
      aux++;
     endwhile 
     subplot(2,2,3);
     plot(task3);
     aux = 1;
     while aux <= k
       suma_produs = m*aux + n*aux + aux;% se calculeaza rata de compresie 
       numar = suma_produs / (m*n);
       task4(aux) = numar;
       aux++;
     endwhile
        subplot(2,2,4);
        plot(task4);
endfunction
