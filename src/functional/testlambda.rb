class Msg

  attr_accessor :attr

  def initialize(proc)
    @attr = 'Lorem'
    @proc = proc
  end

  def imprime(vezes)
    vezes.times { @proc.call(self) }
  end
end

proc = lambda do |context|
  puts context.attr
end

def executa_blocos(&meu_proc)
  yield
end

# m = Msg.new proc
# m.imprime(10)

# executa_blocos{ puts "rodando bloco!" } #=> rodando bloco!


def call_a_block(a, b, &block)
    yield(a,b)
end

call_a_block(2, 3) {|x, y| puts "#{x} #{y}"}