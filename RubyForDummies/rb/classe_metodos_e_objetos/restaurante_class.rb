class Restaurante
  def qualifica(nota, msg="Obrigado")
    puts "A nota do restaurante foi #{nota}. #{msg}"
  end
end

r = Restaurante.new
r.qualifica 10

r1= Restaurante.new
r2= Restaurante.new
r1.qualifica 10
r2.qualifica 1, "Ruim"

puts r1,r2
