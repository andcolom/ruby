class PessoaS
  def fala
    puts "oi"
  end
end

p = PessoaS.new
p.fala

## metodos apenas de "p" (singltons method)
def p.anda
  puts "andando."
end

p.anda

## metodos apenas de "p" (singltons method) - outra forma de criar metodos singleton
class << PessoaS
  def anda
    puts "andando."
  end
end