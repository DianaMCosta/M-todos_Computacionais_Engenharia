function J = Jacobiano(x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%tamanho de acordo com o tamanho da matriz

J = zeros(2,2);
J(1,1) = 2.*x(1);
J(1,2) = 4.*x(2);
J(2,1) = 18*x(1);
J(2,2) = -2*x(2);

end
