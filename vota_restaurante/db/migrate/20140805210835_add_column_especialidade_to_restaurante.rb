class AddColumnEspecialidadeToRestaurante < ActiveRecord::Migration
  def change
    add_column :restaurantes, :especialidade, :string, limit: 80
  end
end
