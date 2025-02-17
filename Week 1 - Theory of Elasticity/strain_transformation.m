clc

epsilon_x = -400 * 10.^-6;
gamma_xy = 375 * 10.^-6;
epsilon_y = 860 * 10.^-6;
theta = 30; % (degrees) +ve because the direction of the angle is CCW

epsilon_xdash = (epsilon_x + epsilon_y) / 2 + ((epsilon_x - epsilon_y) / 2) * cosd(2 * theta) + gamma_xy / 2 * sind(2 * theta);
fprintf("epsilon_xdash = %.4f με\n", epsilon_xdash / 10.^-6)

epsilon_ydash = (epsilon_x + epsilon_y) / 2 - ((epsilon_x - epsilon_y) / 2) * cosd(2 * theta) - gamma_xy / 2 * sind(2 * theta);
fprintf("epsilon_ydash = %.4f με\n", epsilon_ydash / 10.^-6)

gamma_xdashydash = 2 * (- ((epsilon_x - epsilon_y) / 2) * sind(2 * theta) + gamma_xy / 2 * cosd(2 * theta));
fprintf("gamma_xdashydash = %.4f με", gamma_xdashydash / 10.^-6);