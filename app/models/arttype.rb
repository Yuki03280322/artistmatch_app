class Arttype < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'リアルテイスト' },
    { id: 3, name: 'ポップ' }
  ]

  include ActiveHash::Associations
  has_many :artists
  belongs_to :art
end
