# Laravel 5.4 User Authentication + Role Authorization
This repo is implementaions of [everton zp article](https://medium.com/@ezp127/laravel-5-4-native-user-authentication-role-authorization-3dbae4049c8a). 

## Requirements
* PHP >= 5.6.4
* Laravel >= 5.4
* Composer
* Git
* MySQL

### Installation ###

* `git clone https://github.com/karoys/laravel-native-roles-auth.git projectname`
* `cd projectname`
* `composer install`
* `cp .env.example .env`
* `php artisan key:generate`
*  Add your database info in *.env*
* `php artisan migrate` to create and populate tables
* `php artisan db:seed` to create some sample data
* `php artisan serve` to start the app on http://localhost:8080/


## Credits
* Taylor Otwell (Creator of Laravel)
* Everton zp
* [Kali Dass](https://www.linkedin.com/in/kalidassweb) (Creator of Repo)
