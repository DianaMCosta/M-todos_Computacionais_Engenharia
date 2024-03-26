%CALCULA O VALOR DE CADA ITERAÇÃO PARA UMA DADA FUNÇÃO TENDO DE CONTER DOIS
%FICHEIROS UM COM A FUNÇÃO Fx E OUTRA COM A DERIVADA DESSA MESMA FUNÇÃO DFx

function [Resultado,Erro] = MetNewton(x0,It)

format long

for i = 1:It
x = x0 - Fx(x0)/DFx(x0);
Erro = abs(x - x0);
fprintf("It %i, x = %.8f , Erro = %f \n",i,x,Erro);
x0 = x;
end
Resultado = x;
end
