%{
Neural Network Loss Surface
L(w1, w2) = sin(w1)cos(w2) + 0.1(w1^2 + w2^2)

This plot shows:
- Local minima
- Saddle points
- Non-convex optimization behavior
%}

% Neural Network Loss Surface Visualization
clc; clear; close all;

% Weight ranges
w1 = linspace(-6, 6, 400);
w2 = linspace(-6, 6, 400);

% Create grid
[W1, W2] = meshgrid(w1, w2);

% Loss function (non-convex)
Loss = sin(W1).*cos(W2) + 0.1*(W1.^2 + W2.^2);

% Plot loss surface
figure;
surf(W1, W2, Loss, Loss, 'EdgeColor', 'none');

% Visual enhancements (IMPORTANT)
shading interp
colormap turbo        % Better than jet for publications
colorbar
lighting phong
camlight headlight

% Labels
title('Neural Network Loss Surface (Weight Space)');
xlabel('Weight w_1');
ylabel('Weight w_2');
zlabel('Loss Value');

% View angle
view(-40, 45);

% Professional look
axis tight
grid off