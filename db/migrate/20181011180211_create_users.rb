class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, default: '', null: false
      t.string :password_digest, default: '', null: false
      t.integer :attempts, default: 0

      t.timestamps
    end
  end
end
