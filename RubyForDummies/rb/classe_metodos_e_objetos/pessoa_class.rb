class Pessoa
  def fala
    puts "Sei falar"
  end
  
  def troca(roupa,lugar="banheiro")
    "trocando de #{roupa} no #{lugar}"
  end
end

p = Pessoa.new
p.fala
puts p.troca "calca"
p.send :fala

class Pessoa
  def meu_time(time)
    puts "Meu time eh o #{time}"
  end
end

p.meu_time "Corinthians"
