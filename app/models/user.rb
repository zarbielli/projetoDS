class User < ApplicationRecord
    has_secure_password
    has_one :address
    has_many :phones
    has_one :register_validate , dependent: :destroy
end
