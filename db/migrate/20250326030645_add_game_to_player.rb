class AddGameToPlayer < ActiveRecord::Migration[8.0]
  def change
    add_column :players, :game_id, :integer
  end
end
