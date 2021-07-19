class Professor
  attr_accessor :nome, :telefone, :codigo_funcionario

  def initialize(nome, telefone, codigo_funcionario)
    @nome = nome
    @telefone = telefone
    @codigo_funcionario = codigo_funcionario
  end
end
