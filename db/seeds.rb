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
w2 = Wine.create!(style: "white", producer: "Domaine Yves Boyer-Martenot", name: "Meursault", vintage: 2009, alcohol: 13, region: "Burgundy", country: "France", grape: "Chardonnay", window_start: 2015, window_end: 2020)
w3 = Wine.create!(style: "red", producer: "Domaine Pierre Gaillard", name: "Cote-Rotie", vintage: 2010, alcohol: 13.5, region: "Rhone", country: "France", grape: "Syrah", window_start: 2020, window_end: 2030)
w4 = Wine.create!(style: "sparkling", producer: "Pol Roger", name: "Brut", vintage: 2010, alcohol: 13.5, region: "Champagne", country: "France", grape: "Chardonnay", window_start: 2020, window_end: 2030)
w5 = Wine.create!(style: "white", producer: "Coffele", name: "Soave Classico", vintage: 2010, alcohol: 13.5, region: "Veneto", country: "Italy", grape: "Garganega", window_start: 2015, window_end: 2018)

b1 = Bottle.create!(wine_id: w1.id, user_id: u1.id, vendor: "producer", price: 25, drunk: false)
b2 = Bottle.create!(wine_id: w1.id, user_id: u2.id, vendor: "producer", price: 25, drunk: false)
b3 = Bottle.create!(wine_id: w3.id, user_id: u1.id, vendor: "producer", price: 30, drunk: false)
b4 = Bottle.create!(wine_id: w2.id, user_id: u1.id, vendor: "producer", price: 30, drunk: false)
b5 = Bottle.create!(wine_id: w3.id, user_id: u1.id, vendor: "producer", price: 30, drunk: false)
b6 = Bottle.create!(wine_id: w4.id, user_id: u1.id, vendor: "producer", price: 30, drunk: false)
b4 = Bottle.create!(wine_id: w4.id, user_id: u1.id, vendor: "producer", price: 30, drunk: false)

n1 = Note.create!(bottle_id: b1.id, appearance: "clear", nose: "stinking bishop swiss red", palate: "cheeseburger cheese triangles", conclusion: "Brie croque monsieur cauliflower cheese. Brie melted cheese st. agur blue cheese cheesecake stinking bishop swiss red leicester stilton. Cheese triangles gouda cheeseburger st. agur blue cheese monterey jack cheeseburger cheese triangles ricotta. Danish fontina roquefort squirty cheese.", rating: "7", maturity: "Can drink now, but will improve")
n2 = Note.create!(bottle_id: b2.id, appearance: "clear", nose: "cheeseburger cheese triangles ricotta", palate: "croque monsieur cauliflower cheese", conclusion: "Brie croque monsieur cauliflower cheese. Brie melted cheese st. agur blue cheese cheesecake stinking bishop swiss red leicester stilton. Cheese triangles gouda cheeseburger st. agur blue cheese monterey jack cheeseburger cheese triangles ricotta. Danish fontina roquefort squirty cheese.", rating: "9", maturity: "Drink now")
n3 = Note.create!(bottle_id: b3.id, appearance: "clear", nose: "cheeseburger cheese triangles", palate: "blue cheese cheesecake", conclusion: "Brie croque monsieur cauliflower cheese. Brie melted cheese st. agur blue cheese cheesecake stinking bishop swiss red leicester stilton. Cheese triangles gouda cheeseburger st. agur blue cheese monterey jack cheeseburger cheese triangles ricotta. Danish fontina roquefort squirty cheese.", rating: "7", maturity: "Too young")
n4 = Note.create!(bottle_id: b1.id, appearance: "clear", nose: "bishop swiss red leicester stilton", palate: "cheeseburger cheese triangles ricotta", conclusion: "Brie croque monsieur cauliflower cheese. Brie melted cheese st. agur blue cheese cheesecake stinking bishop swiss red leicester stilton. Cheese triangles gouda cheeseburger st. agur blue cheese monterey jack cheeseburger cheese triangles ricotta. Danish fontina roquefort squirty cheese.", rating: "5", maturity: "Past its best")
n5 = Note.create!(bottle_id: b4.id, appearance: "clear", nose: "avocado squirty cheese", palate: "croque monsieur cauliflower", conclusion: "cheeseburger cheese triangles ricotta", conclusion: "Brie croque monsieur cauliflower cheese. Brie melted cheese st. agur blue cheese cheesecake stinking bishop swiss red leicester stilton. Cheese triangles gouda cheeseburger st. agur blue cheese monterey jack cheeseburger cheese triangles ricotta. Danish fontina roquefort squirty cheese.", rating: "3", maturity: "Will improve")
