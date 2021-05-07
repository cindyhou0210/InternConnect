# Welcome to InternConnect 
## Your all-in-one internship reviews platform

![Images](https://github.com/cindyhou0210/InternConnect/blob/gh-pages/Group6.png)

The name pretty much tells it all! Our app connects you with the perfect internships. As college students, looking for the right internships have been so important but existing platforms seem to be unable to satified this demand. Our app helps by providing genuine reviews of different internships, posted by college students instead of companies or their recruiters.

To better understand our app, click here to [access our website](http://dry-shelf-78802.herokuapp.com/)

Developers:

Cindy Hou - cindyhou0210@brandeis.edu

Dawn Mitchell - dmitchell@brandeis.edu

Eli Boundaie - eliboudaie@brandeis.edu



## What is the purpose of the product

InternConnect helps college students with reviewing internships. The app aims to provide genuine reviews on internship programs and companies that creates valuable insights for our users. 

## Core functionalities

### Reviews
The app allows users to look up internships and view all reviews that are associated with that internship. The easiest way to browse through reviews is through our home page where all reviews are displayed. Users can also take a quiz that can better help them narrow down internships that fit their requirements. Our quiz is flexible and accommodating, allowing users to look for internships by seasons, hourly rates, work authorization, and so on. The quiz will the generate a list of programs that fit the user's input. 

### Grab a coffee
The app also has a grab a coffee feature, allowing users to look up users living in the nearby area. This feature aims to promote in person for those who prefer to exchange thoughhts on intenrships in person. A user can look up other users by selecting location on the map. 

### Send a message
The app includes an in-app message feature that allow users to send message to any existing users on our website. This is for the purpose for asking questions as users sometimes are open for questions and direct messages from others.

Other features on the website include managing the user profile page (changing avatar image, uploading image along with the review, edit and delete exiting reviews).

## Schema overview
The primary models in our schema are the quizzes, programs, companies, reviews, user, and user-confid tables. A company can have many programs, and a program can have many reviews. The information contained in the company and program tables help a user to understand what type of company or internship program they would be working for, for example what season an internship program is held. A program can have many reviews, which are each owned by one user, and a user can have reviews for many programs. Each user has a user_confid that allows for authenticated sign in, however in hindsight it would have been a better practice to combine the two models. Had the group had more time to test that the funcitonality did not change after consolidating the two models, we would have implemented the switch from the two models to one. Each user_confid is tied to a quiz record that represents the quiz that users take that matches them to internship programs based on their answsers.

Additional models in the schema were created by gems and APIs used to add functionality to the app, including ActiveStorage, Mailboxer, and Mapbox (the routers model).

## Technologies

### Gems
We have used several interesting gems to help optimize the InternConnect experience. 

### Kaminari
Kaminari is used for pagination so all reviews are displayed in a well organized way. 

### Mailboxer
Mailboxer is used to create a private messaging system between users, giving them an inbox, a sent box, and a trash can that they can manipulate.

### Active-storage
Active-storage is used to allow users to freely upload files from their local directory. 

### Faker
Faker is used to seed the database so the website includes more information other than users' own inputs.

### APIs

### Mapbox
Mapbox is used to develop the Grab a Coffee feature. A styled map is displayed on the page for users to interact with.

## Creative Engineering

### Take a quiz
Developing the take a quiz feature was quite challenging initially as it requires a perfect algorithm that can efficiently display information that can attract new users. The 'take a quiz' feature is available to unregistered users with limited results access. Before displaying the results for new users, we prompt them to sign up for an account first. This is to increase our userbase and attract more people to use our app.

### Gravatar
We inluded Gravatar for the website so users can edit their avatar by signing up for a Gravatar account

## Development, Testing, and Deployment
Our priority for testing was to make sure that the appropriate databases were updated when we expected them to be, such as when a user signed up for the app. We further implemented these integration tests to check that the correct page was rendering and that the correct items appeared depending on certain criteria (ex. the "Log in" vs. "Log out" buttons depending on if a user was signed in). Tests were also written to confirm the functionality of the matching algorithm for the quiz feature. If the group had more time, additional tests would be written to confirm the correct rendering of other pages upon user input. A specific example is the rendering of the correct "previous" page depending on the page the user was on before accessing a program page. A user can access a program page from either the quiz results or from the review page, and it would be good practice to confirm that the previous page was properly stored and displayed if the user chose to click the "Back" button.

## Architecture
<img width="578" alt="arch" src="https://user-images.githubusercontent.com/48698646/117028931-2ccefa80-accc-11eb-891a-1d9b4e3f5987.png">

## Screenshots
### Home page after user login
<img width="942" alt="home_update" src="https://user-images.githubusercontent.com/48698646/117473236-bc241a00-af27-11eb-9aad-6bb79995281b.png">

### Example quiz results page
<img width="956" alt="results" src="https://user-images.githubusercontent.com/48698646/117022577-5ab14080-acc6-11eb-8d0c-57021d496906.png">

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://support.github.com/contact) and we’ll help you sort it out.
