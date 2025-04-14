meses = 1:12;
consumoA = [18, 17, 21, 22, 20, 19, 18, 18, 19, 21, 22, 23];
consumoB = [20, 19, 20, 21, 22, 23, 25, 24, 23, 22, 21, 20];

plot(meses, consumoA, "-o", "LineWidth", 2);
hold on;
plot(meses, consumoB, "-s", "LineWidth", 2);
hold off;

title("Consumo mensal de água em 2023: Blocos A e B");
xlabel("Mês");
ylabel("Consumo (m²)");
legend("Bloco A", "Bloco B");

grid on;
xticks(1:12);
xlim([1 12]);

totalA = sum(consumoA);
mediaA = mean(consumoA);

totalB = sum(consumoB);
mediaB = mean(consumoB);

fprintf("Total anual do Bloco A: %.1f m² | Media mensal = %.1f m²\n", totalA, mediaA);
fprintf("Total anual do Bloco A: %.1f m² | Media mensal = %.1f m²\n", totalB, mediaB);


diferencas = abs(consumoA - consumoB);
[maiorDif, mesDif] = max(diferencas);

hold on;
plot(mesDif, consumoA(mesDif), "ro", "MarkeSize", 10);
plot(mesDif, consumoB(mesDif), "ro", "MarkeSize", 10);
hold off;