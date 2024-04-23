  function [X, erro] = NEWTONIteracoes(x0 , it)
%NEWTONITERACOES Summary of this function goes here
%   Detailed explanation goes here
n = 0;
while(n < it)
    X = x0 - Jacobiano(x0) \ Func(x0)
    n = n+1;
    erro = norm(X - x0);
    x0 = X ;

    fprintf("numero de itecaoes = %i e erro = %.15f",n,erro);
end



end
