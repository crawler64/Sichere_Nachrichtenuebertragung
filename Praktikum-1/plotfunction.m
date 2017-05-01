function [ x ] = plotfunction( y, N, Anzahl )
%plotfunction Summary of this function goes here
%   Detailed explanation goes here
%   Plots 4 Types of Histogramm

figure('Name', 'Aufgabe 6 : Histogramme');
subplot(4,1,1)      % add first plot in 2x1 grid
histogram(y,'Normalization','probability')
title('Histogram(y) Function')

d_bins = (1:Anzahl);
d_probs = hist(y,d_bins)/N;       % Wahrscheinlichkeiten
subplot(4,1,2)
plot(d_probs)
title('Hist(y) Function')


subplot(4,1,3)
stem(d_bins,d_probs)
title('Stem(y) Function - Discrete Function')

subplot(4,1,4)
yverteilung = cumsum(d_probs);
stairs(d_bins, yverteilung);
title('Kummulative Summe');

end

