anosExperiencia = 0:1:30;
nivelQualificacao = 1:1:5;

[X, Y] = meshgrid(anosExperiencia, nivelQualificacao);

% Fórmula do salario(x, y) = 2.5 + 0.8x + 1.5y + 0.05xy

Z = 2.5 + 0.8*X + 1.5*Y + 0.05*X.*Y;

surf(X, Y, Z);
title("Variação Salarial por Tempo e Qualificação");

xlabel("Anos de Experiência (A)");
ylabel("Nível de Qualificação (N)");

colorbar;
grid on;