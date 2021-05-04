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

InternConnect helps college students with reviewing internships. The app aims to provide genuine reviews on internship programs, companies that creates valuable insights for our users. 

## Core functionalities

### Reviews
The app allows users to look up internships and view all reviews that are associated with that internship. The easiest way to browns through reviews is through our home page where all reviews are displayed. Users can also take a quiz that can better help them narrow down intenrships that fit their requirements. Our quiz is flexible and accomendating, allowing users to look for internships by seasons, hourly rates, work authoriztaion, and so on. The quiz will the generate a list of programs that fit the user's input. 

### Grab a coffee
The app also has a grab a coffee feature, allowing users to look up users living in the nearby area. This feature aims to promote in person for those who prefer to exchange thoughhts on intenrships in person. A user can look up other users by selecting location on the map. 

### Send a message
The app includes an in-app message feature that allow users to send message to any existing users on our website. This is for the purpose for asking questions as users sometimes are open for questions and direct messages from others.

Other features on the website include managing user page (changing avatar image, uploading image along with the review, edit and delete exiting reviews)

## Schema overview
The Schema includes tables that associate users with reviews and programs. 

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
Faker is used to seed the database so the website includes more information other than users' own inputs

### APIs

### Mapbox
Mapbox is used to develop the Grab a Coffee feature. A styled map is displayed on the page for users to interact with.

## Creative Engineering

### Take a quiz
Developing the take a quiz feature was quite challenging initially as it requires a perfect algorithm that can efficiently display information that can attract new users. The 'take a quiz' feature is available to unregistered users with limited results access. Before displaying the results for new users, we prompt them to sign up for an account first. This is to increase our userbase and attract more people to use our app.

### Gravatar
We inluded Gravatar for the website so users can edit their avatar by signing up for a Gravatar account

## Development, Testing, and Deployment
Our priority for testing to make sure that the appropriate databases were updated when we expected them to be, such as when a user signed up for the app.

## Screenshots
### Home page after user login
<img width="954" alt="home" src="https://user-images.githubusercontent.com/48698646/117022217-0efe9700-acc6-11eb-813a-a4f4f3d3390d.png">

### Example quiz results page
<img width="956" alt="results" src="https://user-images.githubusercontent.com/48698646/117022577-5ab14080-acc6-11eb-8d0c-57021d496906.png">

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://support.github.com/contact) and we’ll help you sort it out.
