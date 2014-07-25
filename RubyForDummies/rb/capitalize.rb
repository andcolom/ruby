#coding:utf-8
# Muda o primeiro caracter de uma String para caixa Alta
nome = "messi"
puts nome.capitalize
# Note que o método capitalize não altera o valor da variavel.
puts nome

# se quiser que mude o valor da variavel, utilize um BANG !
pais = "Brasil"
pais.capitalize!
puts pais
