#Ruby possui bom suporte a expressões regulares, fortemente inuenciado pelo Perl. Expressões regulares
#literais são delimitadas por / (barra).

puts /rio/ =~ "São Paulo"
puts /Paulo/ =~ "São Paulo"


# O operador =~ faz a função de match e retorna a posição da String onde o padrão foi encontrado, ou nil caso
# a String não bata com a expressão regular. Expressões regulares aparecem com uma frequência maior em
# linguagens dinâmicas, e, também por sua sintaxe facilitada no Ruby, utilizaremos bastante.

# http://rubular.com/ teste para expressões regulares