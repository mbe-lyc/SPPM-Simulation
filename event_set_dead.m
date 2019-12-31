function res = event_set_dead(events, td)
    res = events;
    for i = 1:length(td)
        tmp = zeros(length(res), 1);
        tmp(1) = res(1);
        len = 1;
        for j = 2:length(res)
            if res(j)-tmp(len) > td(i);
                len = len + 1;
                tmp(len) = res(j);
            end
        end
        res = tmp(1:len);
    end
    
end