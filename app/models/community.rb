class Community < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :members, dependent: :destroy
  has_many :member_users, through: :members, source: :user
  mount_uploader :image, ImageUploader
  validates :name, length: { in: 1..50 }
  validates :description, length: { maximum: 500 }
end
