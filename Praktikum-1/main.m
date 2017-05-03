% Praktikum: Sichere Nachrichtentechnik
% Author:   Thomas Gimpel
% Datum:    26.04.2017
clear
close all
%hold on

%% Aufgabe 6

% Mein Spielwürfel hat 12 Augen und wird 1000 mal gewürfelt
d_N = 10000;
d_eyes = 6;
[y_array] = my_dice(d_N, d_eyes);

plotfunction(y_array,d_N,d_eyes);

%% Aufgabe 9

d_N9 = 10000;
y_9 = rand(1,d_N9);     % Zufallswerte
dx_9 = 0.01;               % Breite der Intervalle für Histogramm
x_9 = -1.5:dx_9:1.5;         % Intervall von -1.5 bis 1.5 in dx Schritten
x_9 = x_9 - dx_9/2;         %OFFSET TO CORRECT PLOT

figure('Name','Aufgabe 9 - Gleichverteilung');
histo_9 = hist(y_9,x_9);

% Kontrollplot - Stem gilt als beste Variante
subplot(3,1,1)
stairs(x_9,histo_9);
title('Treppenfunktion')

subplot(3,1,2)
stem(x_9,histo_9)
title('Stemfunktion')

subplot(3,1,3)
plot(x_9,histo_9)
title('Normale Plotfunktion')

% relative Häufigkeit

histo_9_rel = histo_9 * (1/d_N9);
% Annäherung für eine kontinuierliche WDF
histo_9_wdf = histo_9_rel * (1/dx_9);

figure
plot(x_9,histo_9_wdf)
title('Wahrscheinlichkeitsdichtefunktion WDF')

hold on;
yrect = ( x_9 <= 1 & x_9 >0 );
plot(x_9, yrect);

%% Aufgabe 11

d_N11 = 10000;


y_11 = randn(1,d_N11);     % Zufallswerte
dx_11 = 0.01;               % Breite der Intervalle für Histogramm
x_11 = -5:dx_11:5;         % Intervall von -1.5 bis 1.5 in dx Schritten

figure('Name','Aufgabe 11 - Gaußverteilung');
histo_11 = hist(y_11,x_11);

% Kontrollplot - Stem gilt als beste Variante
subplot(3,2,1)
stairs(x_11,histo_11);
title('Treppenfunktion')

subplot(3,2,2)
stem(x_11,histo_11)
title('Stemfunktion')

subplot(3,2,3)
plot(x_11,histo_11)
title('Normale Plotfunktion')

% relative Häufigkeit

histo_11_rel = histo_11 * (1/d_N11);
subplot(3,2,4)
plot(x_11,histo_11_rel)
% Annäherung für eine kontinuierliche WDF
histo_11_wdf = histo_11_rel * (1/dx_11);

subplot(3,2,5)
plot(x_11,histo_11_wdf)
title('Wahrscheinlichkeitsdichtefunktion WDF')
hold on;
Sigma = 1;
f_gauss = 1 / (sqrt(2*pi)*Sigma) * exp(- (x_11).^2 / 2*Sigma^2);
plot(x_11,f_gauss);



