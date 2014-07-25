class Banco
  def initialize(contas)
    @contas = contas
  end

  def status(&block)
    saldo = 0
    for conta in @contas
      saldo += conta
      if block_given?
        block.call saldo
      end
    end
    saldo
  end
end

banco = Banco.new([200, 300, 400])

banco.status do |saldo_parcial|
  puts saldo_parcial
end

banco.status do |saldo_menos_taxa_do_banco|
  saldo_menos_taxa_do_banco = saldo_menos_taxa_do_banco-1
  puts saldo_menos_taxa_do_banco
end

banco.status


# Outra abordagem para chamadas de block
class Banco
  def initialize(contas)
    @contas = contas
  end

  def status # Nao necessita de &block
    saldo = 0
    for conta in @contas
      saldo += conta
      if block_given?
         yield saldo
      end

    end
    saldo
  end
end

puts "Outra abordagem para chamadas de block." 

banco.status do |saldo_mais_juros|
  saldo_mais_juros = saldo_mais_juros + 5
  puts saldo_mais_juros
end

