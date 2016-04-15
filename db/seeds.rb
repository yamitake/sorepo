# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

password = 'sorepopass'
Admin.find_or_create( email: 'admin@example.com', password: password , password_confirmation: password )

password = 'userpass'
Admin.find_or_create( email: 'user1@example.com', password: password , password_confirmation: password )
Admin.find_or_create( email: 'user2@example.com', password: password , password_confirmation: password )
Admin.find_or_create( email: 'user3@example.com', password: password , password_confirmation: password )
