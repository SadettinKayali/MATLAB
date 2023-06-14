function int = interest(p,n,r,type)
if nargin < 4
    type = "simple";
end
if type == "simple"
    int = p*n*r/100;
else
    int = p*(1+r/100)^n - p;
end

% loanint = interest(500,24,3.1,"compound")
% loanint = interest(500,24,3.1)