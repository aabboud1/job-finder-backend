class User < ApplicationRecord
    has_many :posted_jobs, :foreign_key => 'govt_id', :class_name => 'Job'
    has_many :job_bids, :foreign_key => 'company_id', :class_name => 'Bid'
    has_many :received_jobs, :foreign_key => 'company_id', :class_name => 'Job'
    has_secure_password
end
