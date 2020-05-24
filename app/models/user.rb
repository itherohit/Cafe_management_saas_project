class User < ActiveRecord::Base
    has_many :orders
    has_secure_password

    def walkin
       return true  if role == "clerk"
    end

    def online
        return true if role == "customer"
    end
end