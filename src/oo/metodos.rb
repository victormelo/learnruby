# Definição de um método

# def nome ()
# comandos
# end

def <nomeMetodo>(<parametros>)
    # comandos
end

# exemplo:
def imprima(msg)
    puts msg
end

imprima("hello world") # hello world

# Método com vários parametros
def multiplica(n1, n2)
    n1 * n2
end

puts(multiplica(5, 5)) # 25
puts(multiplica(5, 6, 7)) # erro

# Método com parametros indefinidos
def somatorio(*args)
    soma = 0
    for n in args
        soma += n
    end

    soma

end

puts(somatorio(1,2,3)) # 6
puts(somatorio(2, 4, 6, 8, 10, multiplica(5, 20))) # 130

def teste(n1, n2, *args)
    puts n1
    puts n2
    for n in args
        puts n
    end
end

# método com parametros de valores já definidos

def adicionar_imposto(valor, taxa=0.1)
    valor = valor + valor*taxa
    valor
end

puts(adicionar_imposto(100)) # 110
puts(adicionar_imposto(100, 0.2)) # 120