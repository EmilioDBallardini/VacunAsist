class Vacuna < ApplicationRecord
  belongs_to :vaccination
  has_many :campaingvaccines
end
