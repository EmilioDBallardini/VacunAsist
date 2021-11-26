class Turno < ApplicationRecord
  belongs_to :vaccination
  belongs_to :user
end
