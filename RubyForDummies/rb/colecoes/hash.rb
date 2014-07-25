config = Hash.new
config ["porta"] = 80
config ["ssh"] = false
config ["nome"] = "Caelum.com.br"
puts config ["porta"]
puts config [99]

class Conta

  def transfere(params)
    puts "inicio da transferencia: #{Time.now}"
    destino = params[:destino]
    data = params [:data]
    valor = params [:valor]
    # faz transferencia    
    puts "Fim da transferencia: #{Time.now}"
  end
end

conta = Conta.new
# conta.transfere ( {valor:99.95, data:Time.now, destino:"Conta Itau"} )
conta.transfere  valor:99.95, data:Time.now, destino:"Conta Itau"  