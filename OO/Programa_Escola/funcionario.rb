class Funcionario
  attr_reader :ferias, :data_inicio_ferias, :data_fim_ferias
  attr_accessor :nome, :telefone, :codigo_funcionario

  def initialize(nome, telefone, codigo_funcionario)
    @nome = nome
    @telefone = telefone
    @codigo_funcionario = codigo_funcionario
    @ferias = false
    @data_inicio_ferias
    @data_fim_ferias
  end

  def inicia_ferias()
    @ferias = true
    @data_inicio_ferias = Time.now()
  end

  def encerra_ferias()
    @ferias = false
    @data_fim_ferias = Time.now()
  end 
  
  def imprime()
    puts "Funcionário #{@nome} - Telefone #{@telefone} - Codigo #{@codigo_funcionario} - Ferias #{@ferias}"
  end
end
