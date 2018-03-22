function [ v ] = skyfall( g,m,c,t,n)
%skyfall Uses the analytic solution to find the velocity
% If you pass it t as a vector it will return v as a vector of
% corresponding velocities.
v=(g*m/c)*(1-exp(-(c*t/m)));
% print headings and initial conditions
fprintf('values of t and values of v(t)\n')
for i=1:n+1
fprintf('%8.3f',t(i)),fprintf('%19.4f\n',v(i))
end
end