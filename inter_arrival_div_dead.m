function res = inter_arrival_div_dead(t, lambda, td, n)
    res = exp(n*lambda*td)*lambda^n * exp(-lambda*t) / factorial(n-1) .* ((t-n*td).^(n-1));
    for i = 1:length(t)
        if t(i) < td*n
            res(i) = 0;
        end
    end
end