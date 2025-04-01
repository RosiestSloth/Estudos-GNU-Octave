% Definir os ciclistas
ralf = 1; 
david = 2;
rubinho = 3;

% Sequência otimizada de posições ao longo da corrida
corrida = [
    ralf, david, rubinho;  % Momento inicial
    david, ralf, rubinho;  % 1ª troca de liderança (1)
    david, rubinho, ralf;  % 1ª troca entre 2º e 3º (1)
    rubinho, david, ralf;  % 2ª troca de liderança (2)
    rubinho, ralf, david;  % 2ª troca entre 2º e 3º (2)
    ralf, rubinho, david;  % 3ª troca de liderança (3)
    ralf, david, rubinho;  % 3ª troca entre 2º e 3º (3)
    david, ralf, rubinho;  % 4ª troca de liderança (4)
    david, rubinho, ralf;  % 4ª troca entre 2º e 3º (4)
    rubinho, david, ralf;  % 5ª troca de liderança (5)
    rubinho, ralf, david;  % 5ª troca entre 2º e 3º (5)
    ralf, rubinho, david;  % 6ª troca de liderança (6)
    ralf, david, rubinho;  % 6ª troca entre 2º e 3º (6)
    david, ralf, rubinho;  % 7ª troca de liderança (7)
    david, rubinho, ralf;  % 7ª troca entre 2º e 3º (7)
    rubinho, david, ralf;  % 8ª troca de liderança (8)
    rubinho, ralf, david;  % 8ª troca entre 2º e 3º (8)
    david, ralf, rubinho;  % 9ª troca de liderança (9) -> Posição final correta
];

% Nome completo dos ciclistas como cell array
nomes = {"Ralf Schumacher", "David Coulthard", "Rubens Barrichello"};

% Exibir a sequência de posições
fprintf("Momento |      1º Lugar      |      2º Lugar      |      3º Lugar\n");
fprintf("-------------------------------------------------------------------\n");

for i = 1:size(corrida, 1)
    fprintf("   %2d    |  %-18s |  %-18s |  %-18s\n", i-1, ...
            nomes{corrida(i,1)}, nomes{corrida(i,2)}, nomes{corrida(i,3)});
end
