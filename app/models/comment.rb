class Comment < ApplicationRecord
  belongs_to :community
  validates :content, presence: true, length: { maximum: 140 }
  belongs_to :user
end
