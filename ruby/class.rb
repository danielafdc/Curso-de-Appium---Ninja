#tem algo em comum nessas classes. São os mesmos atributos. Todos são animais. Então eu começo a trabalhar com heranças.
#Então eu crio uma classe chamada animal e coloco tudo o que é em comum entre eles.
#Antes estava assim:
#class Cachorro
#    attr_accessor :nome, :idade
#
#    def late
#    	puts @nome + " diz: Au au..." #para acessar a variável dentro do método
#    end
#end
class Animal
	attr_accessor :nome, :idade, :raca
end

class Cachorro < Animal
	attr_accessor :atributosoparacachorro #posso criar um atributo que só o cachorro tem.
	def late
		puts @nome + " diz: Au au..."
	end
end

class Gato < Animal
	def mia
		puts @nome + " diz: Miau..."
	end
end

spike = Cachorro.new
spike.nome = "Spike"

snoop = Cachorro.new
snoop.nome = "Snoop"

tom = Gato.new
tom.nome = "Tom"

tom.mia

spike.late
snoop.late