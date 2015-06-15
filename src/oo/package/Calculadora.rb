require './terminal'
require './operacoes'

class Calculadora
    include Operacoes
    
    def calcular(interface)
        val = interface.prompt
        
        case val['op']
            when "+"
                soma(val['n1'], val['n2'])
            when "-"
                sub(val['n1'], val['n2'])
            when "*"
                mult(val['n1'], val['n2'])
            when "/"
                div(val['n1'], val['n2'])
            else
                raise 'Operador Invalido'
        end
    end

end

calc = Calculadora.new
puts "Resultado: " + calc.calcular(Terminal.new).to_s
puts "*"*20