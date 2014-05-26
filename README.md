## Trails
-----

A hiking checklist site where users can log their completed trails and receive badges based on their total stats.  

As a user, I want to create an account to keep track of my completed hikes.
As a user, I want to log a completed hike with a date.
As a user, I want to see my total miles hiked.
As a user, I want to see the highest summit I've hiked.
As a user, I want to see the badges I have earned.
As a user, I want to see all badges possible to earn and what hikes they are earned on.

As an admin, I want to add new hikes, loops and badges to the database.

As the owner, I want to only allow admins to create content.



Gems used:
Devise for user creation/login.
Paperclip for uploading images to badges.
CanCanCan for allowing only admins to create new content.

Roadmap:
Use ImageMagick to allow default set of badge images and let creator customize text displayed.
Users must upload a picture from their hike to earn the badge.
