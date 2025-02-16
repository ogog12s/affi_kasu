class CreateAffiliates < ActiveRecord::Migration[7.2]
  def change
    create_table :affiliates do |t|
      t.string :name
      t.string :link, null: false

      t.timestamps
    end
  end
end
