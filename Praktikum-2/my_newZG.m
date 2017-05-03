function [ ZG ] = my_newZG( m_x, sigma_x, u_i)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    ZG = m_x + sigma_x*(u_i - 6);
end