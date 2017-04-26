class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.string :author, null: false
      t.references :post, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
