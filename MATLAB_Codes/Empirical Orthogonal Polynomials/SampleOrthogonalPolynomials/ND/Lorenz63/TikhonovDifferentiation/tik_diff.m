% Author: Alexandre Cortiella 2019
% 2nd order Tikhonov regularization see METHODS FOR NUMERICAL
% DIFFERENTIATION OF NOISY DATA by IAN KNOWLES, ROBERT J. RENKA 2014

% Inputs: 
% y - m x 1 vector of noisy state information.(N is the number of data
% points {xi,yi})
% x - m x 1 vector of time-step information
% n - number of partitions of the continuous problem
% lambda - regularization parameter (a knob for tuning)

% Outputs:
% u - nx1 gradient approximations on the MIDPOINTS of t where tj +
% (j-1)*Dt and Dt = (b-a)/n;
% t - (n+1) x 1 continuous abscissa such that u(j) = f'(t(j) + Dt/2)
% A - m x n Integral operator 
% D - (3n-3) x n Difference operator (see Discrete Inverse Problems:
% Insights and Applications, Ch. 8)
% res - 2-norm of the residual A*u - yhat
% relres - 2-norm of the residual A*u - yhat divided by 2-norm of yhat


% Note that x and t may not coincide. For matching both grids, then n =
% m-1;

function [u,t,A,D,res,relres,normreg] = tik_diff(x,y,n,lambda)

%A is the integral operator m x n
[A,t,Dt] = diff_mat(x,n);
%Difference operators

D1 = get_l(n,1)/Dt;
D2 = get_l(n,2)/Dt^2;
D = [eye(n); D1; D2];

u = [];
res = [];
relres = [];

if (~isempty(y))
% y is the noisy data m x 1 
yhat = y-y(1);
    
u = (A'*A + lambda*(D'*D))\(A'*yhat); %Derivative at the MIDPOINTS of t
res = norm(A*u - yhat);
relres = norm(A*u - yhat)/norm(yhat);
normreg = norm(D*u);
end

end


function [A,t,Dt] = diff_mat(x,n)
%x is the discrete abscissa such that yi = g(xi) + e; where e = N(0,sigma)
%and g is the true function that generated the data (without noise)
m = length(x);
dt = x(2)-x(1);
a = x(1); %assumption x1 = a and xm = b
b = x(end);
Dt = (b-a)/n;%Number of intervals 
A = zeros(m,n); %Rows of A = discrete data points; Columns of A = derivatives at the midpoints of t such that u(j) = f'(t(j) + Dt/2)
t = zeros(n+1,1);

for j = 1:n+1
    t(j) = a +(j-1)*Dt;
end

for j = 1:n
    for i = 1:m
        if x(i) <= t(j)
            A(i,j) = 0;
        end
        if (t(j) < x(i)) && ( x(i)  < t(j+1))
           A(i,j) = x(i)-t(j); 
        end
        if t(j+1) <= x(i)
           A(i,j) = dt; 
        end
        
    end
    
end
end