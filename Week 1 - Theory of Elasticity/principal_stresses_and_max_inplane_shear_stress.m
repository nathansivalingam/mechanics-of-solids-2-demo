clc

% MPA (Input)
sigma_xx = 0;
sigma_yy = -9.457;
tao_xy = 28.85;

% Principal stress formulae
sigma_one = (sigma_xx + sigma_yy) / 2 + sqrt(((sigma_xx - sigma_yy) / 2).^2 + tao_xy.^2);
fprintf("sigma_one = %.4f MPa\n", sigma_one);

sigma_two = (sigma_xx + sigma_yy) / 2 - sqrt(((sigma_xx - sigma_yy) / 2).^2 + tao_xy.^2);
fprintf("sigma_two = %.4f MPa\n", sigma_two);

% Max in-plane shear stress
tao_maxinplane = sqrt(((sigma_xx - sigma_yy) / 2).^2 + tao_xy.^2);
fprintf("tao_maxinplane = %.4f MPa", tao_maxinplane);

