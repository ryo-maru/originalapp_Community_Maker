class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :communities
  has_many :comments
  has_many :favorites, dependent: :destroy
  has_many :members, dependent: :destroy
  mount_uploader :image, ImageUploader
  has_one_attached :avatar
  validates :name,length: { in: 1..30 }
  validates :email,length: { in: 6..100 }
  validates :description, length: { maximum: 500 }
  validates :password, presence: true, length: { minimum: 6 }
  before_destroy :ensure_admin_deatroy

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲスト"
      user.description = "こんにちは"
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
    end
  end

  def self.guest_admin
    find_or_create_by!(email: 'guest_admin@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲスト管理者"
      user.description = "こんにちは"

    end
  end


  def ensure_admin_deatroy
     throw(:abort) if User.where(name: "ゲスト管理者") && self.admin == true
   end


end
