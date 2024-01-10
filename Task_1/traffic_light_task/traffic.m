% Set up figure
figure;
axis equal;
%axis off;
hold on;

% Define traffic light parameters
trafficLightPosition = [0.5, 0.4];
trafficLightSize     = [0.2, 0.6];
poleWidth    = 0.02;
circleRadius = 0.1;
%times
greenTime  = 3;
yellowTime = 3;
redTime    = 3;
% Draw pole
rectangle('Position', [trafficLightPosition(1)-poleWidth/2, 0, poleWidth, trafficLightPosition(2)], 'FaceColor', [0.5, 0.5, 0.5]);

% Draw traffic light background
rectangle('Position', [trafficLightPosition(1)-trafficLightSize(1)/2, trafficLightPosition(2)-0.2, trafficLightSize(1), trafficLightSize(2)], ...
   'Curvature', [0.1, 0.1], 'FaceColor', 'black', 'EdgeColor', 'k', 'LineWidth', 2);
title('Traffic Light');
while true
% Draw circles for each color
drawCircle([trafficLightPosition(1), trafficLightPosition(2)+0.3], circleRadius, [0, 1, 0]);  % Green
drawCircle([trafficLightPosition(1), trafficLightPosition(2)+0.1], circleRadius, [0.3, 0.3, 0.3]);
drawCircle([trafficLightPosition(1), trafficLightPosition(2)-0.1], circleRadius, [0.3, 0.3, 0.3]);
pause(greenTime);
drawCircle([trafficLightPosition(1), trafficLightPosition(2)+0.3], circleRadius, [0.3, 0.3, 0.3]);  
drawCircle([trafficLightPosition(1), trafficLightPosition(2)+0.1], circleRadius, [1, 1, 0]);  % Yellow
drawCircle([trafficLightPosition(1), trafficLightPosition(2)-0.1], circleRadius, [0.3, 0.3, 0.3]);
pause(yellowTime);
drawCircle([trafficLightPosition(1), trafficLightPosition(2)+0.3], circleRadius, [0.3, 0.3, 0.3]);
drawCircle([trafficLightPosition(1), trafficLightPosition(2)+0.1], circleRadius, [0.3, 0.3, 0.3]);  
drawCircle([trafficLightPosition(1), trafficLightPosition(2)-0.1], circleRadius, [1, 0, 0]);   % Red
pause(redTime);
end


% Function to draw a colored circle with border
function drawCircle(center, radius, color)
    theta = linspace(0, 2*pi, 100);
    x = radius * cos(theta) + center(1);
    y = radius * sin(theta) + center(2);
    
    % Draw filled circle
    fill(x, y, color);
    
    % Draw circle border
   % plot(x, y, 'Color', 'k', 'LineWidth', 2);
end
