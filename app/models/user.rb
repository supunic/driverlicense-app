class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :torfs, dependent: :destroy
  has_many :torf_questions, through: :torfs, source: :question

end
