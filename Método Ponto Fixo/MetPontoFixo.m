%CALCULA O VALOR DAS ITERAÇÕES COM UM X0 PASSADO POR PARÂMETRO E UM NUMERO
%DE ITERAÇÕES TB PASSADO POR PARÂMETRO
function [Resultado,Erro] = MetPontoFixo(x0,it)
for i = 1:it
    x = gx(x0);
    Erro = abs(x-x0);
    fprintf("It %i, x = %f , Erro = %.10f \n",i,x,Erro);
    x0 = x;
end
    Resultado = x0;
end
