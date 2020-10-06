class Board < ApplicationRecord
  has_many :comments, dependent: :delete_all 
  
  

  validates :name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 1000 }
end
