# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
include ActionView::Helpers

Step.destroy_all
Option.destroy_all
User.destroy_all

k = User.create ({email: 'kehontas@gmail.com', first_name: 'Kehontas', last_name: 'Rowe', password: 'password' })

option = Option.create([{name: 'Daily', user_id: k.id}, {name: 'Weekly', user_id: k.id}, {name: 'Monthly', user_id: k.id}])

goal = Goal.create(name: "Run 13.1 miles", user_id: k.id)

steps = Step.create([{name: "Run 1", user_id: k.id},
                    {name: "Run 3", user_id: k.id},
                    {name: "Run 5", user_id: k.id},
                    {name: "Run 7", user_id: k.id},
                    {name: "Run 10", user_id: k.id},
                    {name: "Run 13.1", user_id: k.id}])
