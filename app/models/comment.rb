class Comment < ApplicationRecord
  belongs_to :community
  validates :content, presence: true
  belongs_to :user
end
