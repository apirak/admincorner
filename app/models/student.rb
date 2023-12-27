class Student < ApplicationRecord
  belongs_to :team
  has_one_attached :picture
end
