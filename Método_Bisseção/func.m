%LOCAL PARA ESCREVER AS FUNÇÕES QUE VÃO SER UTILIZADAS NO CÓDIGO
%METBISSECTION
function [y] = func(x)
   %y = exp(x) - 3*x;
   %y=abs(x)- cos(x);
   %y=abs(x)-exp(x);
   %y=x*x-exp(x-1);
   % y=x+1+atan(x);
   % y= abs(x)-cos(x)
   %y=sin(x)+1-2*x;
   y=(x+1)^2-exp(x-1);
end
