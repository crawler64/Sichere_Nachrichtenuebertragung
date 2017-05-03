function [x, k_mu ] = my_rand1(Nzeil, Mspalt, k_mu)
%Vorlesungsfunction 

L = 32;
P = 2^(L-1);
a = 16807;

x = zeros(Nzeil,Mspalt);

for izeil=1:Nzeil
    for ispalt=1:Mspalt
        k_mu = mod(k_mu*a,P);
        
        x(izeil,ispalt) = k_mu/P;
    end
end
