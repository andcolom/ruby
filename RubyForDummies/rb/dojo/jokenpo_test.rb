#   O objetivo é fazer um juiz de Jokenpo que dada a jogada dos dois jogadores informa o resultado da partida.

#   As regras são as seguintes:

#  Pedra empata com Pedra e ganha de Tesoura
#  Tesoura empata com Tesoura e ganha de Papel
#  Papel empata com Papel e ganha de Pedra

require "test/unit"
require "./Jokenpo"

class JokenpoTest < Test::Unit::TestCase
  
    
  def test_pedra_com_pedra_empata    
    j = Jokenpo.new
    assert_equal( 0 , j.jogar(j.jogadas[:pedra],j.jogadas[:pedra]) )
  end

  def test_pedra_ganha_tesoura
    j = Jokenpo.new
    assert_equal( 1, j.jogar(j.jogadas[:pedra], j.jogadas[:tesoura]))
  end

  def test_tesoura_com_tesoura_empata
    j = Jokenpo.new
    assert_equal( 0 , j.jogar(j.jogadas[:tesoura],j.jogadas[:tesoura]) )
  end

  def test_tesoura_ganha_papel
    j = Jokenpo.new
    assert_equal( 1, j.jogar(j.jogadas[:tesoura], j.jogadas[:papel]))
  end

  def test_papel_empata_papel
    j = Jokenpo.new
    assert_equal( 0 , j.jogar(j.jogadas[:papel],j.jogadas[:papel]) )
  end

  def test_papel_ganha_pedra
    j = Jokenpo.new
    assert_equal(1, j.jogar(j.jogadas[:papel], j.jogadas[:pedra]))
  end

end