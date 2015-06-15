# arquivo -> testeModulo.rb

require "./auth"
include Autenticacao
include Validadores

validador = ValidadorDeCpf.new
puts validador.val(20) # true
operacao_senha(123) # 123


