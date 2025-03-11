
% Criar vetor de temperatura em Fahrenheit
T_f = 32:3.6:93.2;  % De 32°F a 93.2°F com incrementos de 3.6°F

% Converter para Celsius: T_c = (T_f - 32) * 5/9
T_c = (T_f - 32) * 5 / 9;

% Calcular a densidade usando a equação fornecida
rho = (5.5289e-8 * T_c.^3) - (8.5016e-6 * T_c.^2) + (6.5622e-5 * T_c) + 0.99987;

% Criar o gráfico
figure;
plot(T_c, rho, 'b-o', 'LineWidth', 1.5, 'MarkerSize', 6);
grid on;

% Adicionar rótulos e título
xlabel('Temperatura (°C)');
ylabel('Densidade (g/cm³)');
title('Densidade da Água em Função da Temperatura');
