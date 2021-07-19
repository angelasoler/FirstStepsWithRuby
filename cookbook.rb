puts "Bemvindo ao Cookbook, sua rede social de receitas"

receitas = []

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receita"
puts "[3] sair"

print "Escolha uma opção: "
opcao = gets.to_i()

while(opcao != 3) do
    if(opcao == 1)
        puts "Digite o nome da receita: "
        nome = gets.chomp()
        puts "Digite o tipo da receita: "
        tipo = gets.chomp()

        receitas << { nome: nome, tipo: tipo }
        puts
        puts "Receita #{nome} cadastrada com sucesso!"
        puts
    elsif(opcao == 2)
        puts
        puts"========== Receitas cadastradas =========="
        receitas.each do |receita|
            puts"#{receita[:nome]} - #{receita[:tipo]}"
        end
    else
        puts"Opção inválida"
    end

    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receita"
    puts "[3] sair"

    print "Escolha uma opção: "
    opcao = gets.to_i()

end

puts "Obrigado por usar o Cookbook, até logo"
