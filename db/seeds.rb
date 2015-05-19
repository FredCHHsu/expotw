# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "expotw@gmail.com", password: "optogo2015", password_confirmation: "optogo2015")
p "Test user created"

Event.create(timeline_pic: "pic", happened_at: "2015-5-19".to_date, content: "在星巴克偷懶")