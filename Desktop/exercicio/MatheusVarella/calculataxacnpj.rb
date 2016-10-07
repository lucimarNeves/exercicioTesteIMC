require_relative "usuario"

class CalculaTaxaCnpj < usuario

  def initialize
    if usuario.atributo == cpnj
      def calcular_taxa_cnpj(saque)
        taxacnjp = saque*0.10
      end
    else
      def calcular_taxa_cpf(saque)
        taxacpf = saque*0.05
      end
    end
