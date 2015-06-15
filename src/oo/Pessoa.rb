#encoding: utf-8

class Pessoa
  def muda_nome(novo_nome)
    @nome = novo_nome
  end
  def diz_nome
    p "meu nome é #{@nome}"
  end

end

p = Pessoa.new
p.muda_nome "João"
p.diz_nome
p.