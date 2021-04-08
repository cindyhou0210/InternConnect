![Image description](https://github.com/cindyhou0210/InternConnect/blob/main/app/assets/images/Group_8.png)
# README
InternConnect is platform to discover internships and connect with others who have completed internships at an array of different companies. 
Users will be prompted to take a quiz about their personality and skills for our algorithm to match them up with the perfect internship.

# Routes:
get user-page-path will direct page to the user page 
get quiz creats a quiz for a user. User and quiz has a one to one relationsihp
get landing will direct page back to the home page
.
.
.
### Home /
Landing urls: /hello-world/landing

### Reviews /
Reviews urls: /reviews, /reviews/new, /reviews/create, reviews/delete, /reviews/1, /reviews/1/edit, /reviews/1/update

### Programs /
Program urls: /programs/new

### Companies /
Company urls: /companies/new

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

# Models
### UserConfid: 
Enables secure login.

### User
Contains important information about the user, including their major, affiliation, class standing, etc. A user belongs to a user_confid.

### Reviews: 
Contains all information regarding a user's review of an internship program, including ratings of a few aspects of the position that will be used to match other users to the best internships based on their preferences. A review belongs to a user.

### Programs:
Contains information regarding a particular internship program. A program can have many reviews.

### Companies:
Contains information regarding a company, which may have many programs.

### Quizzes:
Contains a user's answers to the personality quiz that will match them to an appropriate program. A quiz will belong to a user.



# UX Design and User Flow

### User Flow

![Image description](https://github.com/cindyhou0210/InternConnect/blob/main/app/assets/images/UX_Flow.png)


# Gems and API
## Ruby version: 2.7.2

## Gems: Cancan, kaminari, rails_admin
