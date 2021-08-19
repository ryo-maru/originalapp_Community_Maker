class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :communities
  has_many :comments
  has_many :favorites, dependent: :destroy
  has_many :members, dependent: :destroy
  mount_uploader :image, ImageUploader
  has_one_attached :avatar
  validates :image, presence: true


  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲスト"
      user.image = open("./db/fixtures/image#{1}.jpeg")
    end
  end

  def self.guest_admin
    find_or_create_by!(email: 'guest_admin@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.admin = 'true'
      user.name = "ゲスト管理者"
      user.image = open("./db/fixtures/image#{1}.jpeg")
    end
  end

end
