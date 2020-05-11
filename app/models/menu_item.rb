class MenuItem < ApplicationRecord
    belongs_to :category
    def self.name_sort
        all.order(:item_name)
    end
end
