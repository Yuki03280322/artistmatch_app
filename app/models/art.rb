class Art < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :arttype
  belongs_to_active_hash :arttouch

  attachment :image
  belongs_to :artist

  with_options presence: true do
    validates :image
    validates :arttype_id
    validates :arttouch_id
  end

  with_options numericality: { other_than: 1 } do
    validates :arttype_id
    validates :arttouch_id
  end
end
