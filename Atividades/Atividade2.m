valores = [true false];

fprintf('Porta | Movimento | TempAlta | Alarme\n');
fprintf('---------------------------------------\n');

for porta = valores
  for movimento = valores
    for temperaturaAlta = valores
      alarme = (porta && movimento) || temperaturaAlta;
      fprintf('  %d   |     %d     |     %d    |   %d\n', porta, movimento, temperaturaAlta, alarme);
    end
  end
end
