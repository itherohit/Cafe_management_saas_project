class Order < ApplicationRecord
    def self.pending
        all.where(delivered_status: false).count
    end
    def self.delivered_today
        all.where(delivered_status: true, date: Date.today).count
    end
end
