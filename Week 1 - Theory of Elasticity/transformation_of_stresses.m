clc
% Problem 1 (in MPA)
sigma_xx = 0; % is +ve because it is facing outwards
sigma_yy = -9.457; % is +ve because it is facing outwards
tao_xy = 28.85; % is +ve because it is facing top-left and bottom-right
theta_p = 90; % -ve because the angle is clockwise

% Stress transformation
sigma_xdash = 0.5 * (sigma_xx + sigma_yy) + 0.5 * (sigma_xx - sigma_yy) * cosd(2 * theta_p) + tao_xy * sind(2 * theta_p);
fprintf("sigma_xdash %.4f MPA\n", sigma_xdash)

sigma_ydash = 0.5 * (sigma_xx + sigma_yy) - 0.5 * (sigma_xx - sigma_yy) * cosd(2 * theta_p) - tao_xy * sind(2 * theta_p);
fprintf("sigma_ydash = %.4f MPA\n", sigma_ydash)

tao_xdashydash = (-((sigma_xx - sigma_yy)) / 2) * sind(2 * theta_p) + tao_xy * cosd(2 * theta_p);
fprintf("tao_xdashydash = %.4f MPA", tao_xdashydash)