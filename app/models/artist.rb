class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :arttype
  belongs_to_active_hash :arttouch
  belongs_to_active_hash :price

  has_many :arts, dependent: :destroy
  attachment :profile_image

  validates :email, uniqueness: { case_sensitive: true }
  validates :password_confirmation, :password, confirmation: true

  with_options presence: true do
    validates :name
    validates :job_request
    validates :arttype_id
    validates :arttouch_id
    validates :profile
    validates :price_id
  end

  with_options numericality: { other_than: 1 , message:'を選択して下さい'} do
    validates :arttype_id
    validates :arttouch_id
    validates :price_id
  end
  
end
