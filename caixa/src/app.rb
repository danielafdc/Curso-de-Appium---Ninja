  class Conta
    attr_accessor :saldo, :mensagem_saida

    def saque(valor)
        if valor > @saldo
            @mensagem_saida = "Saldo insuficiente para saque."
        elsif valor > 700
             @mensagem_saida = "Valor máximo por transação deve ser de 700!"
        else
            @saldo -= valor
            @mensagem_saida = "Saque com sucesso. Muito obrigado!"
        end
    end
end

#  class Conta
#attr_accessor :saldo, :mensagem_saida

#def saque(valor)
#    if @saldo >  valor
#       @saldo -= valor
#       @mensagem_saida = "Saque com sucesso. Muito obrigado!"
#    else
#       @mensagem_saida = "Saldo insuficiente para saque."
#    end
#end
#end