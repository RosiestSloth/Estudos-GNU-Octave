valores = [true false];

fprintf('Movimento | Câmera | Alarme\n');
fprintf('-----------------------------\n');

for movimento = valores
  for camera = valores
    alarme = movimento && camera;
    fprintf('   %d      |   %d    |   %d\n', movimento, camera, alarme);
  end
end
