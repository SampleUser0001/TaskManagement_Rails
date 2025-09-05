# app/models/taskmanager.rb
class Taskmanager < ApplicationRecord
  # 念のため：型を明示してから enum を宣言（DBカラムがあれば冗長だが安全）
  attribute :status, :integer

  # 正しい enum の定義（位置引数スタイル）
  enum :status, { running: 1, waiting: 2, completed: 3 }, prefix: true

  # 表示用
  def status_label
    Enums::Status.get_label(self.status_before_type_cast)
  end
end
