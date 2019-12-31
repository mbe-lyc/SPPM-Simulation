function res = event_inter_arrival(event)
    res = zeros(length(event)-1, 1);
    for i = 2:length(event)
        res(i-1) = event(i) - event(i-1);
    end
end