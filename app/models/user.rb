class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum tipo: [:paciente, :vacunador, :admin]
  validates :nombre, :apellido, :dni, presence: true
  validates :dni, :email, uniqueness: true

  after_initialize :set_default_role, :if => :new_record?     #seteo por default como paciente

  def set_default_role
    self.role ||= :paciente
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :usercampaings
  has_many :campaing, through: :campaingfor_user
  has_many :campaingfor_users
  has_many :vacunas
  has_many :turnos, through: :campaingfor_users
end
