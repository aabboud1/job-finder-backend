class User < ApplicationRecord
    has_many :jobs
    has_many :bids, through: :jobs
end
