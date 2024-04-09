%------------------------------------------------------MÉTODO QUE RECE DUAS MATRIZES E A TOLERÂNCIA POR PARÂMETRO -------------------------------------------------------
function [sol, nit] = Jacobi(A, b, tol)
    if (abs(det(A))<=0.00001);
        disp('A matriz apresenta determinante diferente de 0!');
        return;
    else

    D=diag(diag(A));
    L=tril(-A, -1); %-A para trocar os sinais e -1 para descer uma linha 
    U=triu(-A,1);  %1 sobe uma linha
  
    M=inv(D)*(L+U); 
    N=inv(D)*b;
    
    %máximo dos valores próprios
    rho = max(abs(eig(M))); %raio espetral

    if rho>=1
        disp('O metodo sera divergente');
        return
    end

    i=0;
    erro=1000;
    %começa em zeros a matriz
    %Xa->Xanterior
    Xa=zeros(size(A,1),1);

    %começa em cincos a matriz
    %Xa=5*ones(size(A,1),1)
    while erro>=tol
        
        X=M*Xa+N;
        %norma infinita - erro relativo
        erro = norm(X-Xa,inf)/norm(X,inf);
        %norma 2 - erro absoluto
        %erro = norm(X-Xa,2);
        
        %||f(x)||=||Ax-b||
        %erro = norm(Ax-b,2)
        Xa = X
        i=i+1
    end
    sol = X;
    nit = i;
   end
end
