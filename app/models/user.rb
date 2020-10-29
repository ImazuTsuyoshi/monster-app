class User < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         

  validates :name, presence: true 
  validates :phone, presence: true 
  validates :history, presence: true 
  validates :address, presence: true 
  validates :self_introduction, presence: true        
end
