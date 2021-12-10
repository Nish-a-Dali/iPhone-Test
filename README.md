# iPhone-Test

# Getting started

## Installation

Please check the official laravel installation guide for server requirements before you start. [Official Documentation](https://laravel.com/docs/8.x/)

Alternative installation is possible without local dependencies relying on [Docker](#docker). 

Clone the repository

    git clone https://github.com/Nish-a-Dali/iPhone-Test.git


Install the composer

    composer install

## Database
	
Update the database details in ‘.env’ to match your local setup

Run the following command or directly import the 'iphonetest.sql' file attached in the repository which has my sample records too
	
	php artisan migrate
    php artisan db:seed

## Api Function Call

Please refer 'iPhone-Test.postman_collection' for api method and parameter collections 
