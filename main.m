close
clear
clc
digits(1000);
format long;
rng('shuffle');

% ==============================================================================
% 1. generate events & set deadtime
% ==============================================================================
resol = 1000e-12;
ti = 0:1:5000;

lambda = 5e6;
deadtime = 100e-9;

eve1 = event_gen(lambda, 1e7, deadtime);  % generate events (lambda, # events, deadtime)

eve2 = event_gen(lambda, 1e7, 0);
eve2 = event_set_dead(eve2, deadtime); % set deadtime (events, deadtime)

inter1 = event_inter_arrival(eve1); % get interval time of events (events)
inter2 = event_inter_arrival(eve2);

mplot(ti, event_hist(inter1, resol, 2000)/length(eve1) ); % histogram (interval, resolution, length of histogram)
hold on;
mplot(ti, event_hist(inter2, resol, 2000)/length(eve2) );


% ==============================================================================
% 2. given start signal & stop signal plot histogram
% ==============================================================================
load sppm800k1.mat
load sppm800k2.mat
ti = 0:0.25:5000;

inter = start_stop(sppm800k1, sppm800k2); % get interval time (start signal, stop signal)
sppm = event_hist( inter, 500, 2000); % bin width:500p, # bin: 2000

mplot(ti, sppm);
set(gca, 'YScale', 'log');
