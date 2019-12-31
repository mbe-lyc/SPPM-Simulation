function res = start_stop(A, B)
    res = zeros(5e8,1);
    len = 0;
    ind = 1;
    for i = 1:length(B)

        while ind <= length(A)
            if ind < length(A) && B(i) >= A(ind+1)
                ind = ind+1;
            else break;
            end
        end
        if ind <= length(A) && A(ind) <= B(i)
            len = len + 1;
            res(len) = B(i)-A(ind);
        end
    end
    res = res(1:len);
end