class Professor
  attr_reader :ferias, :data_inicio_ferias, :data_fim_ferias
  attr_accessor :nome, :telefone, :codigo_funcionario, :diciplina

  def initialize(nome, telefone, codigo_funcionario, diciplina)
    @nome = nome
    @telefone = telefone
    @codigo_funcionario = codigo_funcionario
    @diciplina = diciplina
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
end
