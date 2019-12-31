function res = event_hist(event, resol, len)
    res = zeros(len,1);

    for i = 1:length(event)
        ti = floor(event(i)/resol) + 1;
        if ti <= len
            res(ti) = res(ti) + 1;
        end
    end

%    res = res / length(event);

end