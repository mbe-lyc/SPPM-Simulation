function res = event_div(event, n)
    res = zeros(length(event), 1);
    len = 0;
    for i = 1:length(event)
        if mod(i,n) == 0
            len = len+1;
            res(len) = event(i);
        end
    end
    res = res(1:len);
end