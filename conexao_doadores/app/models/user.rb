class User < ApplicationRecord
    has_secure_password
    has_many :adresses
    has_many :phones
    has_one :register_validate
    has_many :products
end
