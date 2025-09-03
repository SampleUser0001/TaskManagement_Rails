class CreateTaskmanagers < ActiveRecord::Migration[8.0]
  def change
    create_table :taskmanagers do |t|
      t.string :title
      t.string :memo
      t.integer :status

      t.timestamps
    end
  end
end
