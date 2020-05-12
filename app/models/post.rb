class Post < ApplicationRecord
    validates :title, presence: true, length: { minimun: 3, maximum: 100 }
    validates :content, presence: true, length: { minimun: 3, maximum: 500 }
    belongs_to :user
end