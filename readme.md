CellarBook

https://cellarbook2.herokuapp.com/

My first full-stack app, built as part of the General Assembly Web Development Immersive course.


The idea

CellarBook takes the place of the conventional wine lover’s cellar book as a tool for keeping track of and writing tasting notes about wine. 

Users can view all the wines and tasting notes stored on the database, and can upload their own wines, “drink” them and add tasting notes. The content is free to view for anyone, but only registered users can manage their own collection.


Technical specification

* Ruby on Rails
* HTML
* CSS
* Foundation
* Bcrypt 
* Font Awesome SASS
* Better Errors
* Pry


Approach

The app uses fours models:

* User
* Wine
* Bottle
* Note

The key associations are that the User model has_many Wines and has_many Notes, both through the Bottle model. That way each user can have multiple bottles of the same wine, with the wine itself only being stored once on the database. 

The Bottle model also stores additional information about an individual bottle (eg, purchase price, name of vendor).

It took some time to get this right and I needed help with some of the more complicated ActiveRecord queries, but I was pleased to have got the relationships working first time.

I tried as much as possible to use route helpers and partials. 

I defined a current_user method in the Application controller and used it in other controllers for user-related database queries. It was also useful for giving only logged-in users access to certain functions (eg Add wine and Log out in the top nav and Add note in the User wines show page).  

In order to manage the different access available to registered and non-registered users, I put their respective methods into separate controllers and used an authenticate method to control access therein.


Achievements

Getting more familiar with:

* Rails (esp. routes and route helpers, and database migrations)
* The Rails console
* ActiveRecord (AR)
* Bcrypt (current_user, authenticate etc)
* Foundation (esp. using and adjusting templates for top nav and sub nav)
* CSS (esp. understating how separating and combining elements with divs, classes and ids, and referring to these in the Console, has given me more control of layout and design


Challenges

* Understanding the model associations initially
* Negotiating the models with AR queries in order to get the correct information with the data available
* The syntax required to call parameters in AR queries


Improvements

* Add search and filter functions
* Add photo upload function
* View wines/notes by user
* Refine the design
* Adding user_id and wine_id to Note model would make ActiveRecord queries simpler.


References

* User stories:

	https://www.pivotaltracker.com/n/projects/1511722

* Wireframes:

	In folder "cellarbook.wireframes"