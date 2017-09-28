class Task < ApplicationRecord
  has_many :listasks
  has_many :users, through: :listasks
end
