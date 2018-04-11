function [root] = mth_root(m, R, x0, eps, imax)
    i = 1;
    disp('iteration  root \n');
   
        root = (((1-(1/m))^i)*x0)+ ((R/m)*((1-(1/m))^(i-1))*(x0^(1-m)));
    while i <= imax
         fprintf('%5.0f %16.10f \n', i, root);
         if abs((1-x0)/root) < eps
             return;
         end
         i = i+1;
         x0 = root;
    end
    fprintf('failed to converge in %g iterations\n', imax)
end