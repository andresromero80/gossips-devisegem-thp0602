class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         # has_many :gosspis BLA BLA BLA
  has_one_attached :avatar
  has_one_attached :header_image
  has_many_attached :uploadsu

  has_many :missions

end
