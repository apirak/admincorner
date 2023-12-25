class Member < ApplicationRecord
  belongs_to :user
  belongs_to :team
  # acts_as_tenant :team
end
