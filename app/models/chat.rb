class Chat < ApplicationRecord
    validates :content, {presence: true}
    validates :studentnum, {presence: true}
end
