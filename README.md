![Image description](https://github.com/cindyhou0210/InternConnect/blob/main/app/assets/images/Group_8.png)
# README
InternConnect is platform to discover internships and connect with others who have completed internships at an array of different companies. 
Users will be prompted to take a quiz about their personality and skills for our algorithm to match them up with the perfect internship. The app currently allows visitors to view a list of reviews of internship programs, and signed-in users can create, view, edit, and delete any reviews that belong to them. Signed-in users can also add new programs and companies if they are not already on the list. In addition, users can take a quiz which will list which programs match their interests most closely. If a user has not yet signed up for the app, they will be prompted to sign in to view their results.

# Routes:
get user-page-path will direct page to the user page 
get quiz creates a quiz for a user. User and quiz has a one to one relationship
get landing will direct page back to the home page
.
.
.
### Home
Landing urls: /hello-world/landing

### Reviews
- Full list of reviews: /reviews
- New review form: /reviews/new
- Create new review from form: /reviews/create
- Delete a review: reviews/delete
- Specific review page: /reviews/1
- Edit specific review: /reviews/1/edit
- Update specific review from edit form: /reviews/1/update

### Programs
- New program form: /programs/new
- Create new program from form: /program/create

### Companies
- New company form: /companies/new
- Create new company from form: /companies/create


### UserConfids
Userconfids urls: /userconfids/new, /userconfids/create, /users/delete, /users/show


### Quiz 
Quiz urls: /quizzes/result, /quizzes/new

### Map

Map urls: map/coffee


### Display user login prompt, and check for correct password and username: /login

### Display the user registration page: /signup
### logout: /logout


# Views:
## User Page
### show
Display user information-serves as a management page for users to view their posts. User can delete posts on this page
Posts are displayed in the form of cards. Card contains information about the post title, time posted, and description of the post

## Layout
### header
Display Home button on the top left corner that allows users to direct back to the home page
Display User button, add post button, and log out button on the top right side

## Reviews
### index
Displays all reviews and gives full CRUD functionality to the user for all reviews that belong to them. Reviews that do not belong to the user will only allow showing the full review.

## Conversations
### index
When a user is signed in, they are able to view a page that lists all of their private messages with other users as well as their "sentbox" and their trash.

### Quiz
### new
The new quiz view contains all questions necessary to compare a user's internship preferences to written reviews to calculate the best match for them.

## Views to implement

### Program and Company Profile Pages
Programs and companies will eventually have their own pages where users can see lists of reviews specific to that program/company and read other information about them.

# Models
### UserConfid: 
Enables secure login.

### User
Contains important information about the user, including their major, affiliation, class standing, etc. A user belongs to a user_confid.

### Reviews: 
Contains all information regarding a user's review of an internship program, including an image if they choose to upload one as well as ratings of a few aspects of the position that will be used to match other users to the best internships based on their preferences. A review belongs to a user.

### Programs:
Contains information regarding a particular internship program. A program can have many reviews.

### Companies:
Contains information regarding a company, which may have many programs.

### Quizzes:
Contains a user's answers to the personality quiz that will match them to an appropriate program. A quiz will belong to a user.

# Schema

### ActiveStorage models for file upload

### Companies
- Name (string)
- Field (string)
- Stage (string)
- Description (text)

### Programs
- name (string)
- field (string)
- paid (boolean)
- work_auth (boolean)
- class_standing (integer)
- company_id (integer)
- season (string)

### Mailboxer models for private messaging

### Quizzes
- user_id (integer)
- unpaid (boolean)
- job_preference (string)
- work_auth (boolean)
- collaboration (integer)
- independence (integer)
- leadership (integer)
- multitasking (integer)
- class_standing (integer)
- pay_preference (integer)
- season (string)

### Reviews
- user_id (integer)
- comment (text)
- program_id (integer)
- collaboration (integer)
- independence (integer)
- leadership (integer)
- multitasking (integer)
- compensation (integer)
- image (string)

### UserConfids
- name (string)
- email (string)
- password_digest (string)
- banner (string)

### Users
- name (string)
- major (string)
- class_year (integer)
- bio (text)
- title (string)
- affiliation (string)
- user_confid_id (integer)

# UX Design and User Flow

### User Flow

![Image description](https://github.com/cindyhou0210/InternConnect/blob/main/app/assets/images/UX_Flow.png)


# Gems and API
## Ruby version: 2.7.2

## Gems: Cancan, kaminari, rails_admin, active-storage, Gravatar, Mailboxer

## APIs: Mapbox