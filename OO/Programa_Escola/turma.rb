class Turma
  attr_accessor :nome, :numero_da_sala, :professor, :alunos

  def initialize(nome, numero_da_sala, professor)
    @nome = nome
    @numero_da_sala = numero_da_sala
    @professor = professor
    @alunos = []
  end

  def adiciona_aluno(aluno)
    alunos << aluno
  end

  def total_alunos()
    @alunos.size()
  end
end
