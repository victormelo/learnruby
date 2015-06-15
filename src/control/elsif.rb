#encoding: utf-8

puts "Digite uma nota: "
nota = gets.to_i

if nota >= 90
    letraNota = 'A'
elsif nota >= 80
    letraNota = 'B'
elsif nota >= 70
    letraNota = 'C'
elsif nota >= 60
    letraNota = 'D'
elsif nota >= 50
    letraNota = 'E'
else
    letraNota = 'F'
end

puts "A letra da nota é " + letraNota