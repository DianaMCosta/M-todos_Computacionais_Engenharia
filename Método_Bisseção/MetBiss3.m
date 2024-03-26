%CALCULA O NUMERO DE ITERAÇÃO ATÉ ENCONTRAR UM VALOR COM UMA DIFERENÇA
%IGUAL AO VALOR DO ERRO PASSADO POR PARÂMETRO 
function [sol, n] = MetBiss3(a,b,erro)
    fa = func(a);
    fb = func(b);

    if fa * fb > 0
        error('A função não muda de sinal em [a, b].');
    end

    n = 1;
    while (b - a) / 2 > erro
        c = (a + b) / 2;
        fc = func(c);
        if fc == 0
            break;
        elseif fa * fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
        n = n + 1; % Incrementa o contador de iterações a cada iteração
    end
    
    sol = (a + b) / 2;
    fprintf('Número de iterações: %d\n', n);
    fprintf('Solução aproximada: %.8f\n', sol);
end
