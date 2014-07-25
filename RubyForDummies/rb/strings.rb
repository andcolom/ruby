# As Strings literais em Ruby podem ser delimitadas por aspas simples ou aspas duplas além de outras formas especiais
mensagem = "Ola Mundo"
puts mensagem
mensagem = 'Ola Mundo aspas simples'
puts mensagem

# A principal característica das Strings em Ruby é que são mutáveis, diferente do Java, por exemplo.
mensagem = 'Bom dia,'
mensagem << "Tudo bem ?"
puts mensagem

# O operador << é utilizado para a operação append de Strings, ou seja, para a concatenação de Strings em uma mesma instância.
# Já o operador + também concatena Strings mas não na mesma instância, isso quer dizer que o + gera novas Strings


# Interpolação
# Basta colocar dentro da String a variável entre as chaves, em k{}. Mas que atento, com Strings denidas
# com aspas simples não é possível fazer uso da interpolação, por isso prera sempre o uso de String com
# aspas duplas.
mensagem = "My first String with Interpolacao"
puts "Well, Ruby is a fucking amazing language. #{mensagem}"
