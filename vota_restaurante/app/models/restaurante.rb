class Restaurante < ActiveRecord::Base

validates_presence_of :nome, message: "deve ser preenchido"
validates_presence_of :endereco, message: "deve ser preenchido"
validates_presence_of :especialidade, message: "deve ser preenchido"
validates_uniqueness_of :nome, message: "nome ja cadastrado"
validates_uniqueness_of :endereco, message: "endereco ja cadastrado"

validate :primeira_letra_deve_ser_maiuscula

private
def primeira_letra_deve_ser_maiuscula
  errors.add("nome","primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
end


#validates :nome, presence: true, uniqueness: true, length: {maximum: 50}
#equivalente a:
#validates_presence_of :nome
#validates_uniqueness_of :nome
#validates_length_of :nome, :maximum => 50

end
