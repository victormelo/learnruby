#encoding: utf-8

class Nome

  # variavel iniciada por @ significa que
  # a variável é declarada implicitamente como atributo da classe,
  # por padrão é privado

  # variavel iniciada por @@ significa que
  # a variável é declarada implicitamente como variável de classe (semelhante a variável static)

  @@contador = 0;

  def initialize(primeiro, meio, ultimo)

    @primeiro = primeiro
    @meio = meio
    @ultimo = ultimo
    @@contador += 1

  end

  # acessores

  # get e set para meio
  def meio=(meio)
    @meio = meio
  end

  def meio
    @meio
  end

  # get para primeiro
  def primeiro
    @primeiro
  end

  # set para ultimo
  def ultimo=(ultimo)
    @ultimo = ultimo
  end

  # forma mais simples
  # três palavras chaves:
  # attr_accessor - capacidade de get e set
  # attr_writer - capacidade de set
  # attr_reader - capacidade de get

  # attr_accessor :meio
  # attr_reader :primeiro
  # attr_writer :ultimo

  def to_s
    print(@ultimo.upcase + ", " + @primeiro + " " + @meio)
  end

end

# um_nome = Nome.new("Victor", "Kléber", "Melo")
# puts um_nome.primeiro
# um_nome.ultimo = "Souza"
# puts um_nome.to_s
