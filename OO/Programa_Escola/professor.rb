class Professor < Funcionario
  attr_accessor :disciplina

  def initialize(nome, telefone, codigo_funcionario, disciplina)
    super(nome, telefone, codigo_funcionario)
    @disciplina = disciplina
  end

  # def imprime()
  #   puts"@disciplina"
  # end
end
