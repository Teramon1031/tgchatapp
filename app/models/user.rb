class User < ApplicationRecord
    has_secure_password
    validates :firstname, {presence: true}
    validates :lastname, {presence: true}
    validates :tgnum, {presence: true}
    validates :email, {presence: true}
    validates :password, {presence: true}
end
