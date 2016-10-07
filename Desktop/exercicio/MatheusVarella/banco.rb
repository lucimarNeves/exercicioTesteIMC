require_relative 'usuario'

class Banco

  attr_accessor :nome, :pin, :senha
  attr_accessor :contas


  def initialize
    self.contas = []
  end


  def novo_usario(nome, saldo, pin, senha)
    self.contas << Usuario.new(nome, saldo, pin, senha)
  end


=begin
    puts "Digite o nome: "
    nome = gets.chomp

    puts "Digite o seu pin: "
    pin = gets.to_i

    puts "Digite sua senha: "
    senha = gets.chomp
    =end
=end

  def buscar_conta(pin)
    self.contas.find { |contas| contas.pin == pin }
  end


  def imprimir_saldos
    self.contas.each do |usuario|
      puts "A conta #{usuario.pin} de #{usuario.nome} tem saldo: #{usuario.saldo}"
    end
  end

  #DEPOSITO
  def deposito(destino, valor)
     conta_destino = buscar_conta(destino)
     if valor > 0
       conta_destino.saldo += valor
     else
       erro
     end
   end

  #SAQUE
  def saque( valor, senha, pin)
      if self.contas.find { |contas| contas.senha == senha and contas.pin == pin }
        conta_pin= buscar_conta(pin)

        if valor > 0 and conta_pin.saldo >= valor
        conta_pin.saldo -= valor
        else
          erro
        end
    else
      puts "senha incorreta"
    end
    end

  #TRANSFERENCIA
  def transferencia(pin, destino, valor)
      saque(valor, senha, pin)
      deposito(destino, valor)
  end

  #ERRO SALDO
  def erro
    puts "Saldo insuficiente"
  end

end
