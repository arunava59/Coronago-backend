# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.find_or_initialize_by(email: "admin@coronagoapp.com")
unless user.persisted?
  user.password = 'CoronaGo$3'
  user.name = 'CoronaGo Admin'
  user.confirmed_at = DateTime.now
  user.country_code = "+91"
  user.mobile = "8866553322"
  user.save!
end