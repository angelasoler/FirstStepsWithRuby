require_relative 'cliente'

class Conta
  attr_reader :numero, :titular
  attr_accessor :saldo

  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
  end

 def sacar(valor)
   if @saldo < valor
     puts"Seu saldo é menor que o valor desejado"
   else
   @saldo -= valor
   end
 end

 def depositar(valor)
   self.saldo += valor
 end

 def transferir(conta_destino, valor)
   if(valor > self.saldo)
    puts "O valor deve ser menor ao seu saldo"
   else
    sacar(valor)
    conta_destino.depositar(valor)
   end
 end
end

