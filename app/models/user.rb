class User < ActiveRecord::Base
    has_many :orders
    has_secure_password

    def walkin
        if role == "clerk"
            return true
        end
    end

    def online
        return true if role == "customer"
    end
end