% Principle Stresses (MPA)
sigma_one = 530.79;
sigma_two = 0;
sigma_three = -230.79;
sigma_yield = 700;

% Maximum Distortion Energy Theory
if sigma_one^2 - sigma_one * sigma_three + sigma_three^2 < sigma_yield^2
  fprintf('Material will not yield');
else
  fprintf('Material will yield')
end