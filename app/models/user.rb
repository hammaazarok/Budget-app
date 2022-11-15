class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable
    has_many :groups
    has_many :payments

    validates :name, presence: true , length: { minimum: 3 }
    validates :email, presence: true, uniqueness: true , length: { minimum: 3 }, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true , length: { minimum: 6 }
end
