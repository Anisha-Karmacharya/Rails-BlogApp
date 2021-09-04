class Blog < ApplicationRecord
    validates :title, uniqueness: true, presence: true, length: {minimum: 5}
    validates :content, presence: true
end
