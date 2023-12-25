class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable,
         :invitable,
         :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :members
  # has_many :teams, through: :members
  acts_as_tenant :teams, through: :members
end
