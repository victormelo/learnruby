class Pessoa
  def fala()
    puts 'oi'
  end
end

p = Pessoa.new
p.fala # imprime oi

# também é possível definir métodos apenas para esse objeto “p”, pois tudo em ruby, até mesmo as
# classes, são objetos, fazendo:

# O método “anda” é chamado de singleton method do objeto “p”.
def p.anda
  puts 'andando'
end
p.anda # imprime andando

p2 = Pessoa.new
p2.fala # imprime oi
# p2.anda -> método não definido

# Um singleton method “vive” em uma singleton class. Todo objeto em ruby possui 2 classes:
# • a classe a qual foi instanciado
# • sua singleton class

# Existe uma notação especial para definir uma singleton class:
class << Pessoa
  def anda
    puts 'andando'
  end
end

Pessoa.anda

# É possível ainda definir tudo na mesma classe:
class Pessoa
  class << self
    def chora
        puts 'bua'
    end
  end
end

Pessoa.chora
p3 = Pessoa.new

p3.fala
p3.anda
p3.chora