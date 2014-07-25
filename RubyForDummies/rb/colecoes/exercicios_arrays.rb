nomes = []
nomes[0] = "Bruce"
nomes << "Padaria Lixona"
for nome in nomes
  puts nome
end
class Franquia
  attr_accessor :restaurantes
  def initialize
    self.restaurantes = []
  end

  #def adiciona ( restaurante )
  #self.restaurantes << restaurante
  #end
  
   def relatorio
    @restaurantes.each do |r|
      yield r
    end
  end

  def adiciona ( *restaurantes)
    for rest in restaurantes
      self.restaurantes << rest
    end
  end

  def mostra
    for rest in self.restaurantes
      puts rest.nome
    end
  end
end

class Restaurante
  attr_accessor :nome

  restaurante_um = Restaurante.new
  restaurante_um.nome = "Fasano"
  restaurante_dois = Restaurante.new
  restaurante_dois.nome = "Fogo de Chao"

  franquia = Franquia.new
  #franquia.adiciona restaurante_um
  #franquia.adiciona restaurante_dois
  franquia.adiciona restaurante_um, restaurante_dois
  franquia.mostra
  
  def fechar_conta(dados)
    puts "Conta fechada no valor de #{dados[:valor]} e com nota #{dados[:nota]}. Comentario: #{dados[:comentario]}"
  end
  
  restaurante_um.fechar_conta valor: 50, nota: 9, comentario: 'Gostei!'
end