function cerinta5()
     A = imread("image3.gif");
     [m,n] = size(A);
     k = 100;
     [A_k, S] = cerinta3("image3.gif", k);
     subplot(2,2 ,1);
     plot(diag(S));
     aux = 1;
     capat = min(m,n);
     while aux <= k
      suma1 = 0;
      suma2 = 0;
      for i = 1:aux
        suma1 = suma1 + S(i,i); % se calculeaza prima suma
      endfor
     
      for i = 1:capat
        suma2 = suma2 + S(i,i);
      endfor
      task2(aux) = suma1/suma2; %se calculeaza a doua suma
     
      aux++;
   
     endwhile
     subplot(2,2,2);
     plot(task2);
     aux = 1;
     while aux <= k
       [B, S] = cerinta3("image3.gif", aux);
       B = double(B);%se face conversia pentru a obtine numere reale 
       A = double(A);%----''----''-----''----''----''------''-------
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
       suma_produs = 2*aux + 1; % se calculeaza rata de compresie 
       numar = suma_produs / n;
       task4(aux) = numar;
       aux++;
     endwhile
        subplot(2,2,4);
        plot(task4);


endfunction
 % OBS !!!!! Singura diferenta fata de cerinta 2 este forumula de calcul de la
 % de la al patrulea grafic si functia B este aflata folosind cerinta 4 