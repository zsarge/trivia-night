class AddActiveToGame < ActiveRecord::Migration[8.0]
  def change
    add_column :games, :active, :boolean, default: true
  end
end
