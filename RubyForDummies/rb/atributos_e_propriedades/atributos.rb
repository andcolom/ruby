# Atributos, também conhecidos como variáveis de instância, em Ruby são sempre privados e começam com
# @. Não há como alterá-los de fora da classe; apenas os métodos de um objeto podem alterar os seus atributos (encapsulamento!).
class Pessoa
  
  def initialize
    puts "Criando objeto Pessoa"
  end
  

  def muda_nome(novo_nome)
    @nome = novo_nome
  end

  def diz_nome
    "meu nome eh #{@nome}"
  end
  
 
 # Métodos acessores e modicadores são muito comuns e dão a ideia de propriedades. Existe uma convenção
 # para a denição destes métodos, que a maioria dos desenvolvedores Ruby segue (assim como Java tem a
 # convenção para getters e setters): 
  def nome # acessor
    @nome
  end
  
  def nome=(novo_nome)
    @nome = novo_nome
  end
  
end

p = Pessoa.new
p.muda_nome "Andre"
puts p.diz_nome