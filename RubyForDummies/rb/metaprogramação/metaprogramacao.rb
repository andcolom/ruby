pessoa = Object.new

def pessoa.fala
  puts "Metaprogramacao: Agora Object.class possui o metodo fala."
end

pessoa.fala

## Mais exemplos
class Aluno
  ## soh sei que nada sei  
end

class Professor
  def ensina(aluno)
    def aluno.escreve
      puts "Agora sei escrever, obrigado professor."
    end
  end
end

juca = Aluno.new
oque_sei = juca.respond_to? :escreve
puts "Sei alguma coisa nesta vida? #{oque_sei}"

professor = Professor.new
professor.ensina juca
juca.escreve
puts juca.respond_to? :escreve 