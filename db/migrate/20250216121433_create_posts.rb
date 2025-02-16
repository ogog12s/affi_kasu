class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.references :account, null: false, foreign_key: true, index: true
      t.references :post, foreign_key: true, index: true
      t.text :content, null: false

      t.timestamps
    end
  end
end
