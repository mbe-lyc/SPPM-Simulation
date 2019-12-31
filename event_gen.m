function res = event_gen(lambda, n, td)

    mu = 1/lambda;
    res = exprnd(mu, n,1);
    res = res + td;
    for i = 2:n
        res(i) = res(i) + res(i-1);
    end

end