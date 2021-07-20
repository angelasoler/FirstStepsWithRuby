CADASTRAR_RECEITA = 1
VER_RECEITAS = 2
BUSCAR_RECEITA = 3
SAIR = 4

def bem_vindo()
  puts "Bemvindo ao Cookbook, sua rede social de receitas"
end

def menu_opcoes()
  puts "[#{CADASTRAR_RECEITA}] Cadastrar uma receita"
  puts "[#{VER_RECEITAS}] Ver todas as receitas"
  puts "[#{BUSCAR_RECEITA}] Buscar receita"
  puts "[#{SAIR}] sair"
 
  print "Escolha uma opção: "
  return gets.to_i()
end

def inserir_receita() 
  puts "Digite o nome da receita: "
  nome = gets.chomp()
  puts "Digite o tipo da receita: "
  tipo = gets.chomp()

  puts
  puts "Receita #{nome} cadastrada com sucesso!"
  puts
  return { nome: nome, tipo: tipo }
end

def imprimir_receitas(r)
  puts"========== Receitas cadastradas =========="
  r.each do |receita|
      puts"#{receita[:nome]} - #{receita[:tipo]}"
  end
  puts
  if r.empty?
    puts"----------Nenhuma receita cadastrada---------"
    puts
  end
end

def buscar_receita(r)
  puts"Escrever palavra chave: "
  palavra_chave = gets.chomp()
  r.each do |receitas|
    puts
    puts "procurando receitas com a palavra #{palavra_chave}\n...aguarde, esta função está em manutenção, enquanto isso cadrastre mais receitas ;)..."
  end
  puts
  if r.empty?
    puts"----------Nenhuma receita cadastrada---------"
    puts
  end
end
bem_vindo()

receitas = []

opcao = menu_opcoes()

loop do
  if(opcao == CADASTRAR_RECEITA)
    receitas << inserir_receita()
  elsif(opcao == VER_RECEITAS)
    imprimir_receitas(receitas)
  elsif(opcao == SAIR)
    break
  elsif(opcao == BUSCAR_RECEITA)
    buscar_receita(receitas)
  else
    puts"Opção inválida"
  end

  opcao = menu_opcoes()

end

puts "Obrigado por usar o Cookbook, até logo"
