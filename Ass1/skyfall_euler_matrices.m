function [t,v] = skyfall_euler_matrices( m,c,g,t0,v0,tn,n )
% print headings and initial conditions
fprintf('values of t approximations v(t)\n')
fprintf('%8.3f',t0),fprintf('%19.4f\n',v0)
% compute step size h
h=(tn-t0)/n;
% set t,v to the initial values
t=t0:h:tn;
v=zeros(1, n);
v(1)=v0;
% compute v(t) over n time steps using Eulers method
for i=1:n
v(i+1)=v(i)+(g-c/m*v(i))*h;
fprintf('%8.3f',t(i+1)),fprintf('%19.4f\n',v(i+1))
end
end