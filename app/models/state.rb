class State < ApplicationRecord
	has_many :members
	has_many :departments
end
