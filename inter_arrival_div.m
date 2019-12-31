function res = inter_arrival_div(t, lambda, n)
    res = lambda^n * exp(-lambda*t) / factorial(n-1) .* (t.^(n-1));
end