1# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create!(name: "charlie", email: "charlie@charlie.com", password: "12345", password_confirmation: "12345")
u2 = User.create!(name: "rhoda", email: "rhoda@rhoda.com", password: "12345", password_confirmation: "12345")

w1 = Wine.create!(style: "red", producer: "Domaine Alain Michelot", name: "Nuits St Georges Vielles Vignes", vintage: 2010, alcohol: 13.5, region: "Burgundy", country: "France", grape: "Pinot Noir", window_start: 2012, window_end: 2018)
w2 = Wine.create!(style: "red", producer: "Domaine Gachot-Monot", name: "Nuits St Georges", vintage: 2009, alcohol: 13, region: "Burgundy", country: "France", grape: "Pinot Noir", window_start: 2015, window_end: 2020)
w3 = Wine.create!(style: "red", producer: "Domaine Pierre Gaillard", name: "Cote-Rotie", vintage: 2010, alcohol: 13.5, region: "Rhone", country: "France", grape: "Syrah", window_start: 2020, window_end: 2030)

b1 = Bottle.create!(wine_id: w1.id, user_id: u1.id, vendor: "producer", price: 25, drunk: false)
b2 = Bottle.create!(wine_id: w1.id, user_id: u2.id, vendor: "producer", price: 25, drunk: false)
b3 = Bottle.create!(wine_id: w3.id, user_id: u1.id, vendor: "producer", price: 30, drunk: false)
b4 = Bottle.create!(wine_id: w2.id, user_id: u2.id, vendor: "producer", price: 30, drunk: false)

n1 = Note.create!(bottle_id: b1.id, appearance: "clear", nose: "apples", palate: "pears", conclusion: "Yummy", rating: "7", maturity: "Can drink now, but will improve")
n2 = Note.create!(bottle_id: b2.id, appearance: "clear", nose: "cherries", palate: "plums", conclusion: "Delicous", rating: "9", maturity: "Ready")
n3 = Note.create!(bottle_id: b3.id, appearance: "clear", nose: "blackcurrant", palate: "strawberry", conclusion: "Horrible", rating: "7", maturity: "Too young")
n4 = Note.create!(bottle_id: b1.id, appearance: "clear", nose: "bananas", palate: "pineapples", conclusion: "Yuck", rating: "5", maturity: "Past its best")
n5 = Note.create!(bottle_id: b4.id, appearance: "clear", nose: "avocado", palate: "mould", conclusion: "disgusting", rating: "8", maturity: "Will improve")
