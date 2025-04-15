

% Criação do sistema fuzzy
fis = newfis('ClimaControl');

% Variável de entrada - Temperatura
fis = addvar(fis, 'input', 'Temperatura', [0 100]);
fis = addmf(fis, 'input', 1, 'Baixa', 'trimf', [0 0 50]);
fis = addmf(fis, 'input', 1, 'Media', 'trimf', [25 50 75]);
fis = addmf(fis, 'input', 1, 'Alta', 'trimf', [50 100 100]);

% Variável de entrada - Umidade
fis = addvar(fis, 'input', 'Umidade', [0 100]);
fis = addmf(fis, 'input', 2, 'Baixa', 'trimf', [0 0 50]);
fis = addmf(fis, 'input', 2, 'Media', 'trimf', [25 50 75]);
fis = addmf(fis, 'input', 2, 'Alta', 'trimf', [50 100 100]);

% Variável de saída - Velocidade do Ventilador
fis = addvar(fis, 'output', 'VelocidadeVentilador', [0 100]);
fis = addmf(fis, 'output', 1, 'Lenta', 'trimf', [0 0 50]);
fis = addmf(fis, 'output', 1, 'Media', 'trimf', [25 50 75]);
fis = addmf(fis, 'output', 1, 'Rapida', 'trimf', [50 100 100]);

% Definição das regras
regras = [
    1 1 1;  % Se (Temperatura Baixa) E (Umidade Baixa) ENTÃO (Velocidade Lenta)
    1 2 1;  % Se (Temperatura Baixa) E (Umidade Media) ENTÃO (Velocidade Lenta)
    1 3 2;  % Se (Temperatura Baixa) E (Umidade Alta) ENTÃO (Velocidade Media)
    2 1 1;  % Se (Temperatura Media) E (Umidade Baixa) ENTÃO (Velocidade Lenta)
    2 2 2;  % Se (Temperatura Media) E (Umidade Media) ENTÃO (Velocidade Media)
    2 3 3;  % Se (Temperatura Media) E (Umidade Alta) ENTÃO (Velocidade Rapida)
    3 1 2;  % Se (Temperatura Alta) E (Umidade Baixa) ENTÃO (Velocidade Media)
    3 2 3;  % Se (Temperatura Alta) E (Umidade Media) ENTÃO (Velocidade Rapida)
    3 3 3;  % Se (Temperatura Alta) E (Umidade Alta) ENTÃO (Velocidade Rapida)
];

% Adiciona as regras ao sistema fuzzy
fis = addrule(fis, regras);

% Função para testar o sistema fuzzy
function resultado = testar_climatizacao(temperatura, umidade)
    % Calcula a saída (velocidade do ventilador)
    saida = evalfis([temperatura, umidade], fis);
    
    % Categoriza a velocidade
    if saida <= 33
        resultado = 'Lenta';
    elseif saida <= 66
        resultado = 'Media';
    else
        resultado = 'Rapida';
    end
end

% Exemplos de teste
printf("Cenário 1 (Baixa/Baixa): %s\n", testar_climatizacao(25, 30));
printf("Cenário 2 (Media/Media): %s\n", testar_climatizacao(50, 50));
printf("Cenário 3 (Alta/Alta): %s\n", testar_climatizacao(75, 80));