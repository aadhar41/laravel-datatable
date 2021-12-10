## Laravel yajra datatable installation
https://github.com/yajra/laravel-datatables { This for installation }

https://datatables.yajrabox.com/starter { This for controller setup & css & js file }

## Laravel css & js assets for blade template


<link rel="stylesheet" href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css">

<!-- jQuery -->
<script src="//code.jquery.com/jquery.js"></script>

<!-- DataTables -->
<script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>

<!-- Bootstrap JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

## Laravel controller 
use Yajra\Datatables\Datatables;

## Laravel controller method

![Datatable Method](https://github.com/aadhar41/laravel-datatable/blob/master/001-datatable-controller-method.png)

## Laravel collective installation
https://laravelcollective.com/docs/6.0/html#installation

## Laravel faker library
https://github.com/fzaninotto/Faker

I have user custom seeder (UserSeeder) to insert/seed data into database.
## Laravel seeder command
https://laravel.com/docs/7.x/seeding
php artisan db:seed ( default command execute DatabaseSeeder )

php artisan db:seed --class=UserSeeder ( command execute UserSeeder )

## Laravel Added Cron/command Function (Laravel Cronjob Scheduling Example)
Referense :
https://appdividend.com/2018/03/01/laravel-cronjob-scheduling-tutorial/


## Laravel api module & Soft Delete method
Reference :
https://medium.com/@chrissoemma/laravel-5-8-delete-and-soft-delete-practical-examples-b9b71c0a97f

Api Endpoints postman :
[POST] http://localhost/blog/api/v1/notes
[GET] http://localhost/blog/api/v1/notes
[DELETE] http://localhost/blog/api/v1/notes/4
[DELETE] http://localhost/blog/api/v2/notes/2
[GET] http://localhost/blog/api/v2/notes/withsoftdelete
[GET] http://localhost/blog/api/v2/notes/softdeleted
[PATCH] http://localhost/blog/api/v1/notes/3
[DELETE] http://localhost/blog/api/v3/notes/2

Creating new migration for alteration of table :
php artisan make:migration add_votes_to_users_table --table=users


