class CreateAccounts < ActiveRecord::Migration[7.2]
  def change
    create_table :accounts do |t|
      t.string :code, null: false

      t.timestamps
    end
    
    add_index :accounts, :code, unique: true
  end
end
