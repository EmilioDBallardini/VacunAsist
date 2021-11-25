class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :nombre, :apellido, :dni, presence: true
  validates :dni, :email, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :usercampaings
  has_many :campaing, through: :campaingfor_user
  has_many :campaingfor_users
  has_many :vacunas
end
