preco = 15:1:40;
demanda = 50:50:500;

[X, Y] = meshgrid(preco, demanda);

% Função do lucro(p, d) = (p − 10) ⋅ d − 500

Z = (X - 10) .* Y - 500;

surf(X, Y, Z);
title("Lucro Total de Vendas");
xlabel("Preço (R$)");
ylabel("Demanda (Un)");
colorbar;
grid on;
