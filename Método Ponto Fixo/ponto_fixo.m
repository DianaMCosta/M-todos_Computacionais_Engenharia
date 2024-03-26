%CALCULA O Nº DE ITEREÇÕES PARA UM DADO ERRO ACONTECER ENTRE A SOLUÇÃO
%APROXIMADA E O VALOR ASSOCIADO À ITERAÇÃO
function [sol,n] = ponto_fixo(x,tolerancia)
erro = 1000;
count = 0;

while erro > tolerancia
erro = abs(gx(x)-x); 
x = gx(x);
count = count +1;
end

sol = x;
n = count;

fprintf('Solução aproximada: %.8f\n', sol);
fprintf('Número de iterações: %d\n', n);

end
