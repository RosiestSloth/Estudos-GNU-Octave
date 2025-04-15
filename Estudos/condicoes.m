valores = [true false];

fprintf('p | q | ~p | p ^ q | p v q | p -> q | p <-> q\n');
fprintf('-----------------------------------------------\n');

for p = valores
  for q = valores
    not_p = ~p;
    conjuncao = p && q;
    condicional1 = ~p || q;
    condicional2 = ~q || p;
    bicondicional = condicional1 && condicional2;
    
    fprintf(' %d | %d |  %d |   %d   |   %d   |    %d   |    %d\n', ...
      p, q, not_p, conjuncao, (not_p || q), bicondicional;
  end
end
