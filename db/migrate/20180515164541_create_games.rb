class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.string :slug, null: false, index: true
      t.text :description
      t.references :publisher
      t.timestamps
    end
  end
end
