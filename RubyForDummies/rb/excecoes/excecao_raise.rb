class MenorDeIdade < Exception  
end

def verificar_idade(idade)  
  if idade < 18
   raise MenorDeIdade, 
    "Voce precisa ser maior de idade para jogar jogos violentos. Idade #{idade}"        
  end
  puts "Idade #{idade} ok, jogue a vontade."
end

idade = 18
verificar_idade(idade)

# tratamento de excecao.
begin
  idade = 16
  verificar_idade(idade)  
rescue MenorDeIdade => e
  puts "Tratamento de excecao. #{e}"
end