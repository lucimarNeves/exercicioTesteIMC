require_relative 'banco'
require_relative 'usuario'

banco = Banco.new

banco.novo_usario("Jose",1000, 123, 556, cnpj)
banco.novo_usario("Joao", 500, 124, 556, cpf)
banco.novo_usario("Maria", 300, 125, 556, cpnj)

banco.deposito(124, 100)
banco.saque(500, 556, 124)
banco.transferencia(124, 123, 100)
banco.imprimir_saldos

#user = Usuario.new("Jose",1000,123,556)
#user2 = Usuario.new("daslmd",5555,999,557)

#banco.imprimir_saldos

=begin
puts "Ola #{jonatas.nome}, Quanto você deseja depositar?"
deposito = gets
jonatas.deposito(deposito.to_i)

jonatas.saldo

puts "Ola #{jonatas.nome}, Quanto você deseja sacar?"
saque = gets
jonatas.saque(saque.to_i)

jonatas.saldo

#transferência
puts "Ola #{jose.nome}, Quanto você deseja transferir?"
transfer = gets.to_i
jose.transferencia(transfer,jonatas)


jonatas.saldo
jose.saldo

=end
