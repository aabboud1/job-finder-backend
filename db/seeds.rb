# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Job.destroy_all
Bid.destroy_all

user_govt = User.create(name: "Hyrum", isGovernment: true, password: "password")
user_company = User.create(name: "Ahmed", isGovernment: false, password: "password")
user_company_two = User.create(name: "Adam", isGovernment: false, password: "password")

rand_company_id = [user_company.id, user_company_two.id]

10.times{Job.create(name: "Build Wall", 
           price: "13.23", 
           deadline: "9999-12-31 23:59:59", 
           govt_id: user_govt.id,
           company_id: nil)}

job_id_arr =[]

10.times{Job.create(name: "Build Wall", 
            price: "13.23", 
            deadline: "9999-12-31 23:59:59", 
            govt_id: user_govt.id,
            company_id: user_company.id)}

Job.all.each do |job| 
  Bid.create(job_id: job.id, 
              company_id: rand_company_id.sample(),
              bid_price: rand(1..100.00), 
              time_to_completion: "9999-12-31 23:59:59", 
              notes: "I'm a note.")
end

