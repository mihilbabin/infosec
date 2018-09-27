class CreateLabs < ActiveRecord::Migration[5.2]
  def change
    create_table :labs do |t|
      t.string :title
      t.string :topic
      t.string :partial_name
      t.string :asset_name

      t.timestamps
    end
  end
end
