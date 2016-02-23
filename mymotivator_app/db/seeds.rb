# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
include ActionView::Helpers

Option.destroy_all
User.destroy_all

k = User.create ({email: 'kehontas@gmail.com', first_name: 'Kehontas', last_name: 'Rowe', password: 'password' })

option = Option.create([{name: 'Daily', user_id:}, {name: 'Weekly', user_id:}, {name: 'Monthly', user_id:}])
