class User < ApplicationRecord
    has_many :posted_jobs, :foreign_key => 'govt_id', :class_name => 'Job'
    has_many :job_bids, :foreign_key => 'company_id', :class_name => 'Job'
    has_many :bids, through: :jobs
    has_secure_password
end
