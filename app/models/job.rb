class Job < ApplicationRecord
    belongs_to :govt, :class_name => 'User'
    belongs_to :company, :class_name => 'User'
    has_many :bids
end
