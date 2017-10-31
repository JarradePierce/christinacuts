class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :phone
      t.string :note, null: false

      t.timestamps
    end
  end
end
