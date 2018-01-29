function Euler(m,c,g,t0,v0,tn,n)
% print headings and initial conditions
fprintf('values of t \n')
 
fprintf('%8.3f',t0)

% compute step size h
h=(tn-t0)/n;
% set t,v to the initial values
t=t0;
v=v0;
% compute v(t) over n time steps using Euler’s method
for i=1:n
t=t+h;
fprintf('%8.3f',t)
end
 
fprintf('\nvalues of v \n')
fprintf('%19.4f', v0) 
 
for i=1:n
v= v+(g-c/m*v)*h;
fprintf('%19.4f', v)
end
