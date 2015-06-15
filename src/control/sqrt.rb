# x=1
# para (inteiro cont=1; cont<6;cont=cont+1) faca
# x=(x+a/x)/2
# fimpara
num = 100
a = 1
while a < num
	x = 1
	5.times { x = ((x+a/x)/2).to_f }
	puts "sqrt(#{a})= #{x}"
	a += 1
end

