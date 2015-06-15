# nome do arquivo -> auth.rb

module Autenticacao

  def operacao_senha(senha)
    puts senha
  end

  module Validadores

    class ValidadorDeCpf

      def val(cpf)
        return true
      end
    end

    class ValidadorDeRg
      def val(rg)
        return true
      end
    end

  end
end
