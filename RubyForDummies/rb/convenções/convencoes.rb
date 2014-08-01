## metodos booleanos terminam em ?
def jogar_bola?(bola)
  if bola.upcase=="FUTEBOL"
    return true
  end
  false
end
puts jogar_bola?("FUTEBOL")
puts jogar_bola?("VOLEI")

## metodos com efeito colateral (que alteram o valor do objeto, ou que costumem lançar exceções) terminam com ! (bang)
def altera_objeto!(objeto)
  puts "Antes #{objeto}"
  objeto = "Novo objeto"
  puts "Depois #{objeto}"
end
objeto = "Velho objeto"
altera_objeto!(objeto)
