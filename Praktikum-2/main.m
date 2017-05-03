clear;
clear all;

%% Aufgabe 12

%03.05.2017
N_12 = 10000;
matrix_width_12 = 12;
vect_12 = rand(matrix_width_12,N_12);
u_sum = sum(vect_12);

dx_12 = 0.01;               % Breite der Intervalle für Histogramm
x_12 = -6:dx_12:6;
ZG = my_newZG( 0, 1, u_sum);

histo_Plot = hist(ZG, x_12);

ZG_new = histo_Plot/(N_12*dx_12);
ZG_new_max = ZG_new/(max(ZG_new));

title('Aufgabe 12a')
subplot(311)
plot(x_12,ZG_new_max)

%% Aufgabe 12 b
%03.05.2017

vect_v = rand(matrix_width_12,N_12);
vect_u = rand(matrix_width_12,N_12);

y_12b_add = my_newZG_cosln( 0, 1, vect_u, vect_v);

% Häufigkeitsverteilung
histo_Plot_b = hist(y_12b_add, x_12);

ZG_new_b = histo_Plot_b/(N_12*dx_12);
ZG_new_max_b = ZG_new_b/(max(ZG_new_b));

title('Aufgabe 12b')
subplot(312)
plot(x_12,ZG_new_max_b)


%% Aufgabe 12 b Zusatz mit veränderten rand
%03.05.2017
k=1;
[vect_u, k] = my_rand1(matrix_width_12,N_12,k);


% Häufigkeitsverteilung
histo_Plot_b_add = hist( vect_u,x_12);

ZG_new_b_add = histo_Plot_b_add/(N_12*dx_12);
ZG_new_max_b_add = ZG_new_b_add/(max(ZG_new_b_add));

title('Zusatzfunktion my-Rand1()')
subplot(313)
plot(x_12,ZG_new_max_b_add)