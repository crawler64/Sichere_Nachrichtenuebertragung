function [ y ] = my_dice( N, x )
%my_dice Summary of this function goes here
%   Detailed explanation goes here
% N = Anzahl der W�rfe
% x = Anzahl der Augen

[y] = ceil(rand(1,N)*x);

end

