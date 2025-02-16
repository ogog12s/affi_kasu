class CreateVideos < ActiveRecord::Migration[7.2]
  def change
    create_table :videos do |t|
      t.references :affiliate, null: false, foreign_key: true
      t.string :downloaded_path

      t.timestamps
    end
  end
end
