lista = Array.new
lista << "RR-71"
lista << "RR-75"
lista << "FJ-91"
puts lista.size
puts lista [2]

lista2 = [1, 2, "string", :simbolo, /$regex^/]
puts lista2

def compra(*produtos)
  # produtos é uma array
  puts produtos.size
end

compra "Joao","Andre","Andre"

