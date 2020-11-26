class User < ApplicationRecord

  mount_uploader :image, ImageUploader
  
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
  validates :phone, presence: true    
  validates :age, presence: true   
  validates :gender, presence: true    
  validates :residence, presence: true    
  
end


