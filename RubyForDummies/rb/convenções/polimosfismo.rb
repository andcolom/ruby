class Animal
  def come
    "Comendo"
  end
end

class Pato < Animal
  def quack
    "Quack!"
  end
end


## Duck Typing
class PatoNormal
  def faz_quack
    "Quack"
  end
end

class PatoDoente
  def faz_quack
    "Queeeeeack"
  end
end

class CriadorDePatos
  def castiga(pato)
    pato.faz_quack
  end
end

p1 = PatoNormal.new
p2 = PatoDoente.new
criador = CriadorDePatos.new
puts criador.castiga(p1)
puts criador.castiga(p2)