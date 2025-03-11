% Definir o intervalo de t
t = 0:pi/64:6*pi;  % Variação de t de 0 até 6π com Δt=π/64

% Calcular x, y e z com as equações paramétricas
x = t .* cos(6 * t);
y = t .* sin(6 * t);
z = t;  % O valor de z é simplesmente t

% Criar gráfico 3D da hélice
figure;
plot3(x, y, z, 'b', 'LineWidth', 1.5);
grid on;
xlabel('x');
ylabel('y');
zlabel('z');
title('Hélice em 3D');
view(45, 30); % Ajusta o ângulo de visualização
