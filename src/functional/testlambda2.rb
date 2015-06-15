fat = lambda do |x|
    ((x>1) and x*fat.call(x-1) or 1)
end

puts fat.call ARGV[0].to_i

# verifica se é par ou impar num certo range
a = lambda do |x|
      (1..10).include? x and ( ((x.odd?) and p 'impar') or (p 'par')  ) or p "mto grande" 
end

# a.call ARGV[0].to_i