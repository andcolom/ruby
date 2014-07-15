# Um dos mais conceitos básicos em linguagens de programação é a declaração de variáveis, que é apenas uma
# associação entre um nome e um valor. Em Ruby, basta denirmos o nome da variável e atribuir um valor
# usando o sinal =

ano = 1950

puts "A Copa do mundo de #{ano} foi jogada no Brasil."

# Mas qual o tipo dessa variável? A variável ano é do tipo Fixnum, um tipo do Ruby que representa números
# inteiros. Mas não informamos isso na declaração da variável ano, isso porque na linguagem Ruby não é necessária
# esse tipo de informação, já que o interpretador da linguagem infere o tipo da variável automaticamente
# durante a execução do código. Esta característica é conhecida como inferência de tipos.