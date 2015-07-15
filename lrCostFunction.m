function J = lrCostFunction(theta, X, y, lambda)
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 
m = length(y);
J=0;
K=X*theta-y;
K=K.^2;
J=sum(K(:,1));
J=J/(2*m);
end
