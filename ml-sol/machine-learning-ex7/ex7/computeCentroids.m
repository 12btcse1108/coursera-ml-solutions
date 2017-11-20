function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

count = zeros(1,K);
sumValue = zeros(K,n);
	for j = 1:m,
		if idx(j) == 1,
			sumValue(1,:) = sumValue(1,:) + X(j,:);
			count(1,1) = count(1,1) + 1;
		elseif idx(j) == 2,
			sumValue(2,:) = sumValue(2,:) + X(j,:);
			count(1,2) = count(1,2) + 1;
		else ,
			sumValue(3,:) = sumValue(3,:) + X(j,:);
			count(1,3) = count(1,3) + 1;
		endif;
	end;
	for i = 1:K
		avgValue(i,:) = sumValue(i,:)/count(1,i);
		centroids(i,:) = avgValue(i,:);
	end;









% =============================================================


end

