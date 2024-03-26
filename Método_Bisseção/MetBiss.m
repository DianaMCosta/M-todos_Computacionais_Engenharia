%CALCULA O NUMERO DE ITERAÇÕES QUE QUEREMOS PASSAR POR PARÂMETROS
function [Resultado,Erro] = MetBiss(a,b,it)
if(func(a) * func(b) > 0)
    fprintf("Nao tem zeros entre %i e %i \n",a,b);
    return;
end
for i = 1:it
   
    Medio = (a+b)/2;
    Erro = (b-a)/2;

    if(func(a) * func(Medio) <= 0)
        b = Medio;
    else
        a = Medio;
    end
    fprintf("It %i, Medio = %f , Erro = %f \n",i,Medio,Erro);
 
end

Resultado = Medio;


end
