require_relative 'conta'

class ContaCorrente < Conta
  attr_accessor :limite

  def initialize(numero, titular, saldo, limite)
    #super = Conta.new
    super(numero, titular, saldo)
    @limite = limite
  end

  def sacar(valor)
    x = self.saldo + self.limite
    if x < valor
      puts"Seu saldo é menor que o valor desejado"
    else
      x -= valor
    end
  end
end
