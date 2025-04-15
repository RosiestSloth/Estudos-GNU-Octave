x = 0:2:100;
y = 0:3:100;

[X, Y] = meshgrid(x, y);

% Altitude z(x, y) = 1000 + 200 ⋅ sin(0.1x) ⋅ cos(0.1y)
Z = 1000 + 200 * sin(0.1 * X) .* cos(0.1 * Y);

surf(X, Y, Z);
shading interp;

% Use um colormap disponível na sua versão, por exemplo 'jet'
colormap(jet);  
colorbar;

title('Altitude em Cores');
xlabel('Leste-Oeste (m)');
ylabel('Norte-Sul (m)');
zlabel('Altitude (m)');
grid on;
