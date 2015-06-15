class Animal
    def come
        puts "Comendo"
    end
end

class Pato < Animal
    def quack
        puts "Quack!"
    end
end

pato = Pato.new
pato.come # Comendo
pato.quack # Quack!

class Pato
    def quack
        puts "Quack!"
    end
end

class PatoEstranho
    def quack
        puts "Quock!"
    end
end

class CriadorDePatos
    def castiga(pato)
        pato.quack
    end
end

pato1 = Pato.new
pato2 = PatoEstranho.new

c = CriadorDePatos.new
c.castiga(pato1)
c.castiga(pato2)

# para o criador de patos, não interessa
# o objeto passado como parâmetro.
# para ele basta que o objeto saiba fazer quack.
# esta característica é conhecida como Duck Typing

# "Se anda como um pato, nada como um pato e faz quack como um pato, eu chamo isso de um pato"
