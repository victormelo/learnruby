#encoding: utf-8

puts "numero 1: "
n1 = Float(gets)
puts "numero 2: "
n2 = Float(gets)

puts "Operação (+, -, *, /): "
op = gets.chomp

case op
    when "+"
        resul = n1 + n2
    when "-"
        resul = n1 - n2
    when "*"
        resul = n1 * n2
    when "/"
        resul = n1 / n2
    else
        puts "operador invalido"
        resul = 0
end

puts "resultado: #{resul}"