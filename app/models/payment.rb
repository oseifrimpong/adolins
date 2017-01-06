class Payment < ApplicationRecord
	belongs_to :user
	has_one :order
end
