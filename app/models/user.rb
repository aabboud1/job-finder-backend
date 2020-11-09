class User < ApplicationRecord
    has_many :jobs
    has_many :bids, through: :jobs
    has_secure_password
end
