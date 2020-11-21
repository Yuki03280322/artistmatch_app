class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :arts, dependent: :destroy

  with_options presence: true do
    validates :name
    validates :job_request
    validates :arttype_id
    validates :arttouch_id
    validates :profile
    validates :price_id
  end

  with_options numericality: { other_than: 1 } do
    validates :arttype_id
    validates :arttouch_id
    validates :price_id
  end
  
end
