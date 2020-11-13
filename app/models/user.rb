class User < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         

  validates :name, presence: true 
  
  VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/



  validates :history, presence: true 
  validates :self_introduction, presence: true        
end
