@avengers = Array.new #variável de instância

@avengers.push("Iron Man")
@avengers.push("SpiderMan")
@avengers.push("Hulk")

#puts @avengers[0]

def imprime_hulk
    @avengers.each do |a| #vai interar todas as opções, mas só vai retornar quando for igual a Hulk
    					  #o each é um for each
    					  #|a| aqui eu passo o contexto
        puts a if a == "Hulk" #imprime Hulk se o valor for igual
    end
end

imprime_hulk

#Se eu fizer do jeito abaixo, o meu método não acessa a variável avengers que está fora dele. Portanto ou eu utilizo o código 2
#Ou eu utilizo o código acima que está sem comentário

#Código 1
# avengers = Array.new #variável de instância

# avengers.push("Iron Man")
# avengers.push("SpiderMan")
# avengers.push("Hulk")

# def imprime_hulk
#     avengers.each do |a|
#         puts a if a == "Hulk" 
#     end
# end

# imprime_hulk

#Código 2
# avengers = Array.new #variável de instância

# avengers.push("Iron Man")
# avengers.push("SpiderMan")
# avengers.push("Hulk")

# def imprime_hulk(avengers)
#     avengers.each do |a|
#         puts a if a == "Hulk" 
#     end
# end

# imprime_hulk(avengers)