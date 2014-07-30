class Jokenpo
  
  attr_accessor :jogadas
  
  def initialize
     @jogadas = {:pedra => "PEDRA", :papel => "PAPEL", :tesoura => "TESOURA" }
  end   
  
  def jogar(j1, j2)  
    result = 0     
    if (j1 == j2 )
      return result
    end
   
    result = regra_pedra(j2  , result)
    result = regra_papel(j2  , result)
    result = regra_tesoura(j2, result)    
  end

  def regra_pedra (j2, result)
    if (j2 == @jogadas[:tesoura])
    return 1
    end
    result
  end
  
  def regra_papel (j2, result)
    if (j2 == @jogadas[:pedra])
      return 1
    end
    result
  end

  def regra_tesoura (j2, result)
    if (j2 == @jogadas[:papel])
      return 1
    end
    result
  end
    
end