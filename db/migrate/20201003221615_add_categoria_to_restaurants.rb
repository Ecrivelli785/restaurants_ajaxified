class AddCategoriaToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :categoria, :string
  end
end
