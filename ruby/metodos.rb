def welcome
    puts "Bem vindo ao Curso de Automação do Zero"
end

welcome

def mostra_nome nome
    puts nome
end

mostra_nome("Daniela")


def some_valor v1, v2
    v1 + v2
    # return res não preciso colocar o valor de retorno. O retorno é automático
    #Ele sempre retorna a última instrução do código
end

puts some_valor(5,4)