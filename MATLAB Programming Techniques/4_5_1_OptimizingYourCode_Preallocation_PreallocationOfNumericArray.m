%% Preallocation Experiment
% The local functions below create an  matrix A for which the  element is equal to .  The only difference is that one has preallocated memory for A and the other has not.
% Run the following code to call and time the makeA function:
m = 5000;
n = 100; 

tic
A = makeA_notPreallocated(m,n);
t1 = toc

tic
A = makeA_preallocated(m,n);
t2 = toc
Speed up
(t1-t2)/t1*100

function A = makeA_preallocated(m,n)

% preallocate A
A = zeros(m,n);
for I = 1:m
    for J = 1:n
        A(I,J) = I+J;
    end
end

end


function A = makeA_notPreallocated(m,n)

for I = 1:m
    for J = 1:n
        A(I,J) = I+J;
    end
end

end
