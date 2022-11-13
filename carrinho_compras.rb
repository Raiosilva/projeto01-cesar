# Projeto realizado para a trilha de formação Ruby on Rails  do Instituto CESAR
# Este projeto consiste em simular um carrinho do produto
# Feito pelo aluno Raimundo José Oiveira da Silva

@opcao_produto = 0
@opcao_tipo_compra = 0
tipo_produto_convert = ''
qtd_produto = 0
@soma_produto = 0.0
@continuar = 1

def formaterQtdProduto(type) 
  return 'option01' if type == 1
  return 'option02' if type == 2
  return 'option03' if type == 3
end

def produtos_lista?(type, soma_produto, qtd_produto)
  {
    "option01" => @soma_produto + (qtd_produto * 50),
    "option02" => @soma_produto + (qtd_produto * 200),
    "option03" => @soma_produto + (qtd_produto * 100)
  }[type] || "Erro"
end

def menu_tipo_compra
  loop do
    puts "\n (1) - Caneta: R$50,00"
    puts "\n (2) - Lapis: R$200,00"
    puts "\n (3) - Borracha: R$100,00"
    @opcao_produto = gets.to_i

    if @opcao_produto < 1 || @opcao_produto > 3
      puts "\n Opção inválida!"
      puts "\n Tente novamente!"
      sleep 3
    end

    break if @opcao_produto > 0 && @opcao_produto < 4
  end
end

def menu_principal()
  loop do
    puts "\n Escolha opção desejada:"
    puts "\n (1) - Comprar"
    puts "\n (2) - Sair"
    @opcao_tipo_compra = gets.to_i

    if @opcao_tipo_compra < 1 || @opcao_tipo_compra > 2
      puts "\n Opção inválida!"
      puts "\n Tente novamente!"
      sleep 2
    end

    break if @opcao_tipo_compra > 0 && @opcao_tipo_compra < 3
  end
end

def verificar_qtd_produto
  loop do
    puts "\n Digite a quantidade desejada: "
    @qtd_produto = gets.to_i

    if @qtd_produto < 1
      puts "\n Digite um número maior que zero: "
    end

    break if @qtd_produto > 0
  end
end

def verificar_saida_loop_principal
  loop do
    puts "\n Digite (0) para voltar ao menu inicial: "
    @continuar = gets.to_i

    puts "\n Você precisa digitar o ZERO para continuar!" if @continuar != 0

    break if @continuar == 0
  end
end

def main 
    loop do
    menu_principal

    puts "\nAté breve!" if @opcao_tipo_compra == 2

    if @opcao_tipo_compra == 1
        menu_tipo_compra
        verificar_qtd_produto

        tipo_produto_convert = formaterQtdProduto(@opcao_produto)    
        result_produto = produtos_lista?(tipo_produto_convert, @soma_produto, @qtd_produto)
        @soma_produto = result_produto
        
        puts "\n Subtotal: R$ #{@soma_produto.to_f}"
        verificar_saida_loop_principal
    end
    break if @opcao_tipo_compra == 2
    end
end

main