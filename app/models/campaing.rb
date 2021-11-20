class Campaing < ApplicationRecord
  has_many :campaingfor_users
  has_many :users, through: :campaingfor_user
end
