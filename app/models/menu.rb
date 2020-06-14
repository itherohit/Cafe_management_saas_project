class Menu < ActiveRecord::Base
    has_many :menu_items
    has_many :categories
    has_many :menuhelpers
    def self.active 
        all.where(active: true)
    end
    def self.notactive 
        all.where(active: false)
    end
end