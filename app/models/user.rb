class User < ActiveRecord::Base
    has_many :orders
    has_secure_password

    def walkin
       return true  if role != "customer"
    end

    def online
        return true if role == "customer"
    end

    def self.customer
        all.where(role: "customer")
    end
    def self.clerk
        all.where(role: "clerk")
    end
end