class Department < ApplicationRecord
  belongs_to :state
  has_many :members
  has_many :apparatus
  has_many :alarms
end
