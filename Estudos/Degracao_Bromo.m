% Dados experimentais
t_exp = [10, 20, 30, 40, 50, 60];  % Tempo em minutos
c_exp = [3.4, 2.6, 1.6, 1.3, 1.0, 0.5];  % Concentração em ppm

% Vetor de tempo para a equação teórica
t = linspace(0, 70, 100);  % De 0 a 70 minutos, com 100 pontos para suavizar a curva

% Calcular a concentração teórica
c_teo = 4.8 * exp(-0.034 * t);

% Criar o gráfico
figure;
hold on;  % Permite sobrepor os gráficos

% Plotar os dados experimentais (quadrados)
plot(t_exp, c_exp, 'ks', 'MarkerFaceColor', 'r', 'MarkerSize', 8, 'DisplayName', 'Dados experimentais');

% Plotar a curva teórica (linha contínua)
plot(t, c_teo, 'b-', 'LineWidth', 2, 'DisplayName', 'Curva teórica');

% Adicionar rótulos e título
xlabel('Tempo (min)');
ylabel('Concentração (ppm)');
title('Fotodegradação do Bromo');

% Ativar a legenda
legend('Location', 'northeast');

% Adicionar grade
grid on;
hold off;
