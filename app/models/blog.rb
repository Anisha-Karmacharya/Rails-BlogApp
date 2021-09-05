class Blog < ApplicationRecord
    has_one_attached :image
    validates :title, uniqueness: true, presence: true, length: {minimum: 5}
    validates :content, presence: true
end
