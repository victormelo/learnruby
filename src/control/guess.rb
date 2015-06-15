#encoding: utf-8

# Guess Game 
qtd = 100

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
	tentativas+=1
end

puts "-"*10
puts "Acertou em #{tentativas} tentativas"
puts "-"*10
