module Enums
  module Status
    RUNNING = { id: 1, label: "実行中" }
    WAITING = { id: 2, label: "待機中" }
    COMPLETED = { id: 3, label: "完了" }

    def self.get_label(id)
      status = [ RUNNING, WAITING, COMPLETED ].find { |status| status[:id] == id }
      status ? status[:label] : ""
    end
  end
end
