class RestaurantesController < ApplicationController
  
  def restaurante_params
    params.require(:restaurante).permit(:nome, :endereco, :especialidade)
  end
  
  def index
    @restaurantes = Restaurante.order :id
  end
  
  def show
    @restaurante = Restaurante.find(params[:id])
  end
  
  def destroy
    @restaurante = Restaurante.find(params[:id])
    @restaurante.destroy
    redirect_to action: 'index'
  end
  
  def new 
    @restaurante = Restaurante.new
  end

  def create
    @restaurante = Restaurante.new restaurante_params
    @restaurante.save
    redirect_to action: 'index'
  end

end
