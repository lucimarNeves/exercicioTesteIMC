class Usuario

  attr_accessor :nome, :saldo, :pin, :senha, :atributo

  def initialize(nome, saldo, pin, senha, atributo)
    @nome = nome
    @saldo = saldo
    @pin = pin
    @senha = senha
    @atributo = atributo
  end

end
