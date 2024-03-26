x=0:0.1:1;
%função fx
%y=sin(x)+1-x;
y=-((1/2)*sin(x));
%y=(1/2)*(cos(x));

%derivada de fx
%y=(-1/2)*((exp(x-1))/sqrt(exp(x-1)));

%QUANDO EXECUTAMOS O PLOT E NÃO APARECER O GRÁFICO TEMOS DE COLOCAR O
%ASTERISCO PQ ISSO SIGNIFICA QUE SÃO PONTOS
%plot(x,y,"*")

plot(x,y);
