# Ruby permite adicionar outros métodos e operações aos objetos em tempo de execução.

# imagine um objeto pessoa
pessoa = Object.new

pessoa.fala() # erro, pessoa não tem o método fala

def pessoa.fala()
    puts "Sei falar"
end

pessoa.fala() # Sei falar

# isso é chamado meta-programação, um recurso muito comum de linguagens dinâmicas.

# podemos criar métodos que definem métodos em outros objetos:

# ex:

class Aluno
    # não sabe nada
end

class Professor 
    # esse método adiciona dois métodos ao objeto algo
    def ensina(algo)
        def algo.escreve
            puts 'sei escrever'
        end

        def algo.le(str)
            puts 'li: ' + str
        end
    end
end

aluno = Aluno.new

professor = Professor.new
professor.ensina(aluno)
aluno.escreve # sei escrever
aluno.le("ola mundo") # li: ola mundo
