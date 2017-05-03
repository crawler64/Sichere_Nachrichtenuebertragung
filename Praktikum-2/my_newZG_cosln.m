function [ ZG ] = my_newZG_cosln( m_x, sigma_x, u_i, v)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    ZG = m_x + sigma_x.*(cos(2*pi.*u_i).*sqrt(-(2).*log(v)));
end 