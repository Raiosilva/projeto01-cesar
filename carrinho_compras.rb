# Projeto realizado para a trilha de formação Ruby on Rails  do Instituto CESAR
# Este projeto consiste em simular um carrinho do produto
# Feito pelo aluno Raimundo José Oiveira da Silva

opcao_produto = 0.0
qtd_produto = 0.0
soma_produto = 0.0
continuar = 1

loop do
  puts "\n Escolha opção desejada:"
  puts "\n (1) - Comprar"
  puts "\n (2) - Sair"
  opcao_tipo_compra = gets.to_i

  puts "\n Opcao escolhida #{opcao_tipo_compra}"
  
  if opcao_tipo_compra == 1
    puts "\n (1) - Caneta: R$50.00"
    puts "\n (2) - Lapis: R$200.00"
    puts "\n (3) - Borracha: R$100.00"
    opcao_produto = gets.to_i

    puts "\n Opcao escolhida #{opcao_produto}"
  
    puts "\n Digite a quantidade desejada: "
    qtd_produto = gets.to_i

    soma_produto = soma_produto + (qtd_produto * 50) if opcao_produto == 1
    soma_produto = soma_produto + (qtd_produto * 200) if opcao_produto == 2
    soma_produto = soma_produto + (qtd_produto * 100) if opcao_produto == 3

    puts "\n Subtotal: R$ #{soma_produto}"
    puts "\n Digite (0) para voltar ao menu inicial: "
    continuar = gets.to_i
  end
  break if opcao_tipo_compra == 2
end