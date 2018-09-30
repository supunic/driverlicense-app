class Question < ApplicationRecord
  has_many :torves, dependent: :destroy
  has_many :torf_users, through: :torves, source: :user
  belongs_to :field
end
