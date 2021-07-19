def bem_vindo()
  puts "Bemvindo ao Cookbook, sua rede social de receitas"
end

def menu_opcoes()
  puts "[1] Cadastrar uma receita"
  puts "[2] Ver todas as receitas"
  puts "[3] sair"
 
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
end

bem_vindo()

receitas = []

opcao = menu_opcoes()

while(opcao != 3) do
  if(opcao == 1)
    receitas << inserir_receita()
  elsif(opcao == 2)
    imprimir_receitas(receitas)
    receitas
  else
    puts"Opção inválida"
  end

  opcao = menu_opcoes()

end

puts "Obrigado por usar o Cookbook, até logo"
