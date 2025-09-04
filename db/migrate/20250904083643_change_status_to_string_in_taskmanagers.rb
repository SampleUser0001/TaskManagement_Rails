class ChangeStatusToStringInTaskmanagers < ActiveRecord::Migration[8.0]
  def change
    change_column :taskmanagers, :status, :string
  end
end
