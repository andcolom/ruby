#   O objetivo é fazer um juiz de Jokenpo que dada a jogada dos dois jogadores informa o resultado da partida.

#   As regras são as seguintes:

#  Pedra empata com Pedra e ganha de Tesoura
#  Tesoura empata com Tesoura e ganha de Papel
#  Papel empata com Papel e ganha de Pedra

require "test/unit"
require "./Jokenpo"

class JokenpoTest < Test::Unit::TestCase
  
  def setup
    @jokenpo = Jokenpo.new
  end
    
  def test_pedra_com_pedra_empata    
    assert_equal( 0 , @jokenpo.jogar(@jokenpo.jogadas[:pedra],@jokenpo.jogadas[:pedra]) )
  end

  def test_pedra_ganha_tesoura
    assert_equal( 1, @jokenpo.jogar(@jokenpo.jogadas[:pedra], @jokenpo.jogadas[:tesoura]))
  end

  def test_tesoura_com_tesoura_empata
    assert_equal( 0 , @jokenpo.jogar(@jokenpo.jogadas[:tesoura],@jokenpo.jogadas[:tesoura]) )
  end

  def test_tesoura_ganha_papel
    assert_equal( 1, @jokenpo.jogar(@jokenpo.jogadas[:tesoura], @jokenpo.jogadas[:papel]))
  end

  def test_papel_empata_papel
    assert_equal( 0 , @jokenpo.jogar(@jokenpo.jogadas[:papel],@jokenpo.jogadas[:papel]) )
  end

  def test_papel_ganha_pedra
    assert_equal(1, @jokenpo.jogar(@jokenpo.jogadas[:papel], @jokenpo.jogadas[:pedra]))
  end

end