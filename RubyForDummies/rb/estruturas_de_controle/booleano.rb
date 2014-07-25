# O if do ruby aceita qualquer expressão booleana, no entanto, cada objeto em Ruby possui um “valor booleano”.
# Os únicos objetos de valor booleano false são o próprio false e o nil. Portanto, qualquer valor pode
# ser usado como argumento do if:

variavel = nil
if(!variavel)
  print true
  print :corinthians
elsif
print false
end

def procura_sede_copa_do_mundo ( ano )
  case ano
  when 1895..2005
    "Uruguai"
  when 2006
    "Alemanha"
  when 2010
    "A.Sul"
  when 2014
    "Brasil"
  else
  "TIMAO"
  end
end

puts procura_sede_copa_do_mundo(2015)