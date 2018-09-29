class AddMoreFieldsToLabs < ActiveRecord::Migration[5.2]
  def change
    add_column :labs, :goal, :string
    add_column :labs, :task, :string
  end
end
