class AddMoreFieldsToLabs < ActiveRecord::Migration[5.2]
  def change
    add_column :labs, :goal, :text
    add_column :labs, :task, :text
  end
end
