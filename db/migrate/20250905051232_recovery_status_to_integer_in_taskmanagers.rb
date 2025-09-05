class RecoveryStatusToIntegerInTaskmanagers < ActiveRecord::Migration[8.0]
  def change
    change_column :taskmanagers, :status, :integer
  end
end
