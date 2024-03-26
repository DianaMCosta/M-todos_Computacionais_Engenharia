%erro
function [y]= Biss3(a,b,tol)
    func= @(x)x^2 -exp(x-1);
    erro=tol+1;
    it=1;
 

    while erro >=tol
        c=(a+b)/2;
        erro=(b-a)/2;
        fprintf("%d        %f         %f\n", it,c,erro);
        if func(a)*func(c)<=0
            b=c;
        else
            a=c;
        end
        it=it+1;
    end


end
