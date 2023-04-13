# Ruby on Rails App come_across

- What this app is doing :

This app list places and enable users to create new entries with information such as Place name, date, comments/pictures taken during the trip, and personal ratings by categories such as landscape, people, and food. The web application allows multiple comments, pictures, and attachments and has no authentication.
The project was built using Ruby On Rails 6 and Docker, with RoR HTML. I have also included models with relationships and views/forms, and provided a README file for the reviewer to fully understand how to set up the development environment. The UI/UX was designed with basic Bootstrap CSS.
I have created a public GitHub repository for the project and I am now sharing the link for your review.



Setting up the Come Across Rails project
This is a Rails project that uses Docker and PostgreSQL. Follow these steps to set it up on your computer:

Prerequisites
You'll need to have the following software installed on your computer:

Docker
Docker Compose
Steps
Clone the project repository to your local machine.

Navigate to the project directory in your terminal.

Create a build for docker using the following command:

docker-compose build

Start the Docker containers using the following command:

docker-compose up


Wait for Docker to finish building the images and starting the containers.

In a new terminal window, run the following command to create the database and run the migrations:


docker-compose run web rails db:create db:migrate


Once the migrations are complete, you can start the Rails server with the following command:

docker-compose up web


Visit localhost:3000 in your web browser to see the running application.

That's it! You should now be able to run the Come Across Rails project on your computer using Docker and PostgreSQL.




Troubleshooting
If you run into any issues setting up the project, please check the following:

Make sure you have Docker and Docker Compose installed correctly on your computer.
Check that the correct ports are being used in the docker-compose.yml file.
Verify that the database.yml file matches the configuration in docker-compose.yml.
If you're still having trouble, feel free to reach out to






## Requirement
- Ruby `2.7.2`
- Rails `6.0.6`
- Postgresql
- Node.js version 14

## Software
- RVM for ruby version managing
- Postgres App database for the app

## Install Dependencies (First time only)
- Install ruby v2.7.2 using: `rvm install 2.7.2`
- Install rails dependencies: `bundle install`
- Install node dep: `yarn`
- Install docker
- Install docker-compose
- docker-compose build
- docker-compose run web rails db:create
- docker-compose run web rails db:migrate

## Database creation & initialization
- `rails db:create`
- `rails db:migrate`
