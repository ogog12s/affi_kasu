class CreateVideos < ActiveRecord::Migration[7.2]
  def change
    create_table :videos do |t|
      t.references :post, null: false, foreign_key: true
      t.string :downloaded_path
      t.string :affiliate_link

      t.timestamps
    end
  end
end
