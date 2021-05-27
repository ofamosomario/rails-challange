class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.string :title, limit: 255, null: false
      t.boolean :active, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
