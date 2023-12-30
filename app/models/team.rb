class Team < ApplicationRecord
  validates :name, presence: true

  has_many :members, dependent: :destroy
  has_many :users, through: :members
  has_many :curriculums, dependent: :destroy
  has_many :students, dependent: :destroy
end
