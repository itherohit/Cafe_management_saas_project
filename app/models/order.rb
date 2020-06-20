class Order < ApplicationRecord
    belongs_to :user
    has_many :order_items
    def self.walkin
        count = 0
        pending = all.where(delivered_status: false)
        pending.each do |pending|
            if pending.user.role == "clerk"
                count =count+1
            end
        end
        return count
    end
    def self.pending
        all.where(delivered_status: false).count
    end
    def self.pendingorder
        all.where(delivered_status: false)
    end
    def self.delivered_today
        all.where(delivered_status: true, date: Date.today).count
    end
    def self.delivered
        all.where(delivered_status: true).order('updated_at DESC');
    end
    def self.sort_date
        all.order('date DESC')
    end
end
