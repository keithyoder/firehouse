class Member < ApplicationRecord
  belongs_to :department
  belongs_to :state
  belongs_to :bloodtype
end
