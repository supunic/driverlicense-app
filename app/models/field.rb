class Field < ApplicationRecord
  has_many :questions, dependent: :destroy 
end
