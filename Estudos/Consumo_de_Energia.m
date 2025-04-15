temperatura = 20:1:35;
umidade = 40:5:90;

[X, Y] = meshgrid(temperatura, umidade);

% Função do consumo(x, y) = 0.1 ⋅ x**2 − 0.05 ⋅ y + 15

Z = 0.1 * X.**2 - 0.05 * Y + 15;

% Mesclagem do Gráfico 3D:
surf(X, Y, Z);
title("Consumo  de Energia em Função da Temperatura e Umidade");

xlabel("Temperatura (ºC)");
ylabel("Umidade Relativa (%)");
zlabel("Consumo (Kwh)");
colorbar;
grid on;