class Aluno
  def initialize(nome, telefone, matricula)
    @nome = nome
    @telefone = telefone
    @matricula = matricula
  end

# getter
  def telefone
    return @telefone
  end

#setter
  #em ruby podemso delcarar metodos com =
  def telefone=(valor)
    @telefone = valor
  end

  def nome
    return @nome
  end

  def nome=(valor)
    @nome = valor
  end

  def matricula
    return @matricula
  end

  def matricula=(valor)
    @matricula = valor
  end
end
