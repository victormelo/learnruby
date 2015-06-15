#encoding: utf-8
# prefix = lambda do |arg|
#     r = arg.map do |x|
#         if x[:sexo] == :feminino
#             "Sra " + x[:nome] 
#         elsif x[:sexo] == :masculino
#             "Sr " + x[:nome]
#         end
#     end

#     r
# end

# puts prefix.call(pessoas.sort_by {|atrib| atrib[:nome]})

f1 = lambda {|x| x + 3 } 
def duas_vezes(f, x); f.call(f.call(x)) end
 
print duas_vezes(f1, 7)

pessoas = [
    {:nome => "Victor", :sexo => :masculino},
    {:nome => "Mayra", :sexo => :feminino},
    {:nome => "Wanessa", :sexo => :feminino},
    {:nome => "Edjeane", :sexo => :feminino},
    {:nome => "José", :sexo => :masculino},
    {:nome => "Maria", :sexo => :feminino},
    {:nome => "Pedro", :sexo => :masculino},
    {:nome => "Fátima", :sexo => :feminino}
]


pessoas.sort_by {|atrib| atrib[:nome]}.map do |x|
    (x[:sexo] == :feminino and (x[:nome] = "Sra " + x[:nome])) or (x[:sexo] == :masculino and (x[:nome] = "Sr " + x[:nome]))
end