class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :torfs, dependent: :destroy
  has_many :torf_questions, through: :torfs, source: :question

end
