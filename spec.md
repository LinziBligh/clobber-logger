# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app - used corneal, sinatra and activerecord
- [x] Use ActiveRecord for storing information in a database - done
- [x] Include more than one model class (e.g. User, Post, Category) - several models, users, items, outfits and categories
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - user has many items
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - outfits belong to a user
- [x] Include user accounts with unique login attribute (username or email) - login with username and password
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - yes
- [x] Ensure that users can't modify content created by other users - yes, app checks if logged in for each route
- [x] Include user input validations - makes sure fields are not left blank
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits - commited after every change
- [x] Your commit messages are meaningful - short and clear
- [x] You made the changes in a commit that relate to the commit message - yes
- [x] You don't include changes in a commit that aren't related to the commit message - yes
