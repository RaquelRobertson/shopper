# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
list = List.find_or_create_by_name("First Shopping List")
item = list.items.first
item ||= list.items.create(name: "Eggs", lowest_price: 2.00, last_price: 2.35)
