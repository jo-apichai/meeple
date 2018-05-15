class CreatePublishers < ActiveRecord::Migration[5.2]
  def change
    create_table :publishers do |t|
      t.string :name, null: false
      t.string :slug, null: false, index: true
      t.string :website
      t.timestamps
    end
  end
end
