clc

E = 200 * 10.^9; % Pa
v = 0.28; % No units because it is a ratio

% This is the axial stress, hoop stress, and radial stress (order sigma_one to sigma_three with the highest value being assigned to sigma_one and the lowest value being assigned to sigma_three)
sigma_one = 200 * 10.^6;
sigma_two = 100 * 10.^6;
sigma_three = 0;

% Formula
epsilon_one = 1 / E * (sigma_one - v * (sigma_two + sigma_three));
fprintf("epsilon_one = %.4f με", epsilon_one / 10.^-6);