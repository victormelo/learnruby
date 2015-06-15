#encoding: utf-8

qtd = 10

ans = rand qtd
guess = -1
tentativas = 0
puts "Adivinhe o número. Máximo: #{qtd}"
while guess != ans
    guess = gets.to_i   

    if ans > guess
        puts "O número é maior"
    elsif ans < guess
        puts "O número é menor"
    end
    tentativas += 1
end

puts "-"*25
puts "Acertou em #{tentativas} tentativas"
puts "-"*25