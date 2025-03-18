from graphviz import Digraph

# Criar o objeto do diagrama
dot = Digraph('DER_PetShop', format='png')

# Adicionar entidades
dot.node('Cliente', 'Cliente\n(id_cliente, nome, telefone,\nendereco, email)', shape='rectangle')
dot.node('Pet', 'Pet\n(id_pet, nome, especie,\nraca, idade, id_cliente)', shape='rectangle')
dot.node('Servico', 'Servico\n(id_servico, descricao, preco)', shape='rectangle')
dot.node('Agendamento', 'Agendamento\n(id_agendamento, data_hora,\nid_cliente, id_pet, id_servico, status)', shape='rectangle')
dot.node('Veterinario', 'Veterinario\n(id_veterinario, nome, crm,\nespecialidade, telefone)', shape='rectangle')
dot.node('Consulta', 'Consulta\n(id_consulta, id_pet, id_veterinario,\ndata_hora, diagnostico, prescricao)', shape='rectangle')
dot.node('Produto', 'Produto\n(id_produto, nome, descricao,\npreco, estoque)', shape='rectangle')
dot.node('Venda', 'Venda\n(id_venda, id_cliente, data_hora, valor_total)', shape='rectangle')
dot.node('ItensVenda', 'Itens_Venda\n(id_item, id_venda, id_produto,\nquantidade, preco_unitario)', shape='rectangle')

# Adicionar relacionamentos
dot.edge('Cliente', 'Pet', label='1:N')
dot.edge('Pet', 'Agendamento', label='1:N')
dot.edge('Servico', 'Agendamento', label='1:N')
dot.edge('Cliente', 'Agendamento', label='1:N')
dot.edge('Veterinario', 'Consulta', label='1:N')
dot.edge('Pet', 'Consulta', label='1:N')
dot.edge('Cliente', 'Venda', label='1:N')
dot.edge('Venda', 'ItensVenda', label='1:N')
dot.edge('Produto', 'ItensVenda', label='1:N')

# Salvar e renderizar
file_path = "/mnt/data/DER_PetShop.png"
dot.render(file_path, format='png', cleanup=False)

file_path
