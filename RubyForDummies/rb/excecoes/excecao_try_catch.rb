def pesquisa_banco(nome)
  if nome.size < 10
    throw :nome_invalido, "Nome invalido, deve conter mais do que 9 caracteres."
  end
  nome
end

def executa_pesquisa(nome)
  catch :nome_invalido do
    banco =  pesquisa_banco(nome)
    return banco    
  end
end

puts executa_pesquisa("Itau")
puts executa_pesquisa("Itau Unibanco, agora sim.")


