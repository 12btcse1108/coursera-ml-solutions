function j = firstCostFunctionOctave(X,y,theta)

m = size(X,1);
prediction = X*theta;
sqErrors = (prediction - y).^2;
j = 1/(2*m) * sum(sqErrors);
