Inline-style: ![alt text](https://github.com/cindyhou/InternConnect/app/assets/images/Group_8.png "Logo Title Text 1")

# README
InternConenect is platform to discover internships and connect with others who have completed internships at an array of different companies. 
Users are prompted to take a quiz about their personality and skills for our algorithm to match them up with the perfect internship.

# Routes:
get user-page-path will direct page to the user page 
get quiz creats a quiz for a user. User and quiz has a one to one relationsihp
get landing will direct page back to the home page
.
.
.
### Home /
Landing urls: /hello-world

### Reviews /
Reviews urls: /add-review, /add-program, /add-company, /reviews/1, /reviews/2

### Userconfids/
Userconfids urls: /userconfids/new, /userconfids/create, /users/delete, /users/show

### Quiz /
Quiz urls: /quiz/question1


### Display user login prompt, and check for correct password and username: /login

### Display the user registration page: /signup
### logout: /logout




# Views:
## User Page
### show
Display user infornation-serves as a management page for users to view their posts. User can delete posts on this page
Posts are displayed in the form of cards. Card containes infomration about the post title, time posted, and description of the post

## Layout
### header
Display Home button on the top left corner that allows users to direct back to the home page
Display User button, add post button, and log out button on the top right side 

# Gems and API
## Ruby version: 2.7.2

## Gems: Cancan, kaminari, rails_admin
