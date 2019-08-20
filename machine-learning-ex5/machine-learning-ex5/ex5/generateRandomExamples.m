function [X_random, y_random] = generateRandomExamples (X, y, n) 
  X_random = zeros(n, size(X, 2));
  y_random = zeros(n);
  r = randperm(n);
  for i = 1:n
    X_random(i, :) = X(r(i), :);
    y_random(i) = y(r(i));
  endfor
endfunction
