class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.belongs_to :seller, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
