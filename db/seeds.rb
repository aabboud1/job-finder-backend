# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Job.destroy_all

user = User.create(name: "Hyrum", isGovernment: true, password: "password")
job = Job.create(name: "Build Wall", 
           price: "13.23", 
           deadline: "9999-12-31 23:59:59", 
           govt_id: 0,
           company_id: 0)

byebug
0