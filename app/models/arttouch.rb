class Arttouch < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'あったか' },
    { id: 3, name: 'くっきり' }
  ]

  include ActiveHash::Associations
  has_many :artists
  belongs_to :art
end
