%% Nesting a Function
% The following function finds the roots of the polynomial  near .
a = 1;
b = 0;
c = -4;
n = 1;

z = findZero(a,b,c,n)

function z = findZero(a,b,c,n)
z = fzero(@polynomial,n);

    function y = polynomial(x)
        y = a*x^2 + b*x + c;
    end
end
