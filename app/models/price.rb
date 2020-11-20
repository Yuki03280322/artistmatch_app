class Price< ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '要相談' },
    { id: 3, name: '1人500円' },
    { id: 4, name: '1人1000円' },
    { id: 6, name: '1人2000円' },
    { id: 7, name: '1人3000円' },
    { id: 8, name: '1人5000円' },
  ]

  include ActiveHash::Associations
  has_many :artists
  
  end