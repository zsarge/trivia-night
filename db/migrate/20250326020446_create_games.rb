class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :host_id

      t.timestamps
    end
  end
end
