% Definir o intervalo de theta
theta = 0:pi/32:8*pi;  % Variação de θ de 0 até 8π com Δθ=π/32

% Calcular r usando a equação fornecida
r = exp(sin(theta)) - 2 * cos(4 * theta) - sin((20 * theta - pi) / 24).^5;

% Converter para coordenadas cartesianas
x = r .* cos(theta);
y = r .* sin(theta);
z = theta;  % Para um efeito 3D

% Criar o gráfico em 3D
figure;
plot3(x, y, z, 'r', 'LineWidth', 1.5);
grid on;
xlabel('x');
ylabel('y');
zlabel('θ');
title('Curva da Borboleta em 3D');
view(45, 30); % Ajusta o ângulo de visualização
