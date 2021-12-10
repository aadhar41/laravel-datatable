<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[British Software Development](https://www.britishsoftware.co)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- [UserInsights](https://userinsights.com)
- [Fragrantica](https://www.fragrantica.com)
- [SOFTonSOFA](https://softonsofa.com/)
- [User10](https://user10.com)
- [Soumettre.fr](https://soumettre.fr/)
- [CodeBrisk](https://codebrisk.com)
- [1Forge](https://1forge.com)
- [TECPRESSO](https://tecpresso.co.jp/)
- [Runtime Converter](http://runtimeconverter.com/)
- [WebL'Agence](https://weblagence.com/)
- [Invoice Ninja](https://www.invoiceninja.com)
- [iMi digital](https://www.imi-digital.de/)
- [Earthlink](https://www.earthlink.ro/)
- [Steadfast Collective](https://steadfastcollective.com/)
- [We Are The Robots Inc.](https://watr.mx/)
- [Understand.io](https://www.understand.io/)
- [Abdel Elrafa](https://abdelelrafa.com)
- [Hyper Host](https://hyper.host)
- [Appoly](https://www.appoly.co.uk)
- [OP.GG](https://op.gg)
- [云软科技](http://www.yunruan.ltd/)

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

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

public function datatable(Request $request)
    {
        // return Datatables::of(Job::query())->make(true);

        $jobdata = Job::select('jobs.id', 'jobs.job_type', 'jobs.job_category', 'jobs.medical_center', 'jobs.profession', 'jobs.speciality', 'jobs.state', 'jobs.status', 'jobs.created_at', 'jobs.updated_at')->with("createdby", "associatedJobtype", "jobcategory", "medicalcenter", "associatedProfession", "associatedSpeciality", "associatedState");
        return Datatables::of($jobdata)
            ->filter(function ($query) use ($request) {
                if ($request->has('status') && $request->get('status') != '') {
                    $query->where(function ($q) use ($request) {
                        $q->where('jobs.status', 'like', $request->get('status'));
                    });
                }

                if ($request->has('jobtype') && $request->get('jobtype') != '') {
                    $query->where(function ($q) use ($request) {
                        $q->where('jobs.job_type', 'like', $request->get('jobtype'));
                    });
                }

                if ($request->has('jobcategory') && $request->get('jobcategory') != '') {
                    $query->where(function ($q) use ($request) {
                        $q->where('jobs.job_category', '=', $request->get('jobcategory'));
                    });
                }

                if ($request->has('medicalcenter') && $request->get('medicalcenter') != '') {
                    $query->where(function ($q) use ($request) {
                        $q->where('jobs.medical_center', '=', $request->get('medicalcenter'));
                    });
                }
                if ($request->has('profession') && $request->get('profession') != '') {
                    $query->where(function ($q) use ($request) {
                        $q->where('jobs.profession', '=', $request->get('profession'));
                    });
                }
                if ($request->has('speciality') && $request->get('speciality') != '') {
                    $query->where(function ($q) use ($request) {
                        $q->where('jobs.speciality', '=', $request->get('speciality'));
                    });
                }
                if ($request->has('state') && $request->get('state') != '') {
                    $query->where(function ($q) use ($request) {
                        $q->where('jobs.state', '=', $request->get('state'));
                    });
                }
            })
            ->addColumn('jobtype', function ($jobdata) {
                return $jobtype = (isset($jobdata->associatedJobtype->jobtype)) ? ucwords($jobdata->associatedJobtype->jobtype) : "";
            })
            ->addColumn('jobcategory', function ($jobdata) {
                return $jobcategory = (isset($jobdata->jobcategory->name)) ? ucwords($jobdata->jobcategory->name) : "";
            })
            ->addColumn('medicalcenter', function ($jobdata) {
                return $medicalcenter = (isset($jobdata->medicalcenter->name)) ? ucwords($jobdata->medicalcenter->name) : "";
            })
            ->addColumn('profession', function ($jobdata) {
                return $profession = (isset($jobdata->associatedProfession->profession)) ? ucwords($jobdata->associatedProfession->profession) : "";
            })
            ->addColumn('speciality', function ($jobdata) {
                return $speciality = (isset($jobdata->associatedSpeciality->specialty)) ? ucwords($jobdata->associatedSpeciality->specialty) : "";
            })
            ->addColumn('state', function ($jobdata) {
                return $state = (isset($jobdata->associatedState->name)) ? ucwords($jobdata->associatedState->name) : "";
            })
            ->addColumn('created_at', function ($jobdata) {
                return $created_at = (isset($jobdata->created_at)) ? date("F j, Y, g:i a", strtotime($jobdata->created_at)) : "";
            })
            ->addColumn('status', function ($jobdata) {
                return $status = (isset($jobdata->status) && ($jobdata->status == 1)) ? 'Enabled' : 'Disabled';
            })
            ->addColumn('action', function ($jobdata) {

                $link = '
                    <div class="btn-group">
                        <a href="' . route('job.delete', $jobdata->id) . '" class="btn btn-sm btn-danger" title="Delete" onclick="return confirm(\'Do you really want to delete the job?\');" ><i class="fas fa-trash-alt"></i></a>
                    </div>
                ';

                $activelink = '
                        <div class="btn-group">
                            <a href="' . route('admin.job.enable', $jobdata->id) . '" class="btn btn-sm btn-warning" title="Enable"><i class="fas fa-lock"></i></a>
                        </div>
                    ';
                $inactivelink = '
                        <div class="btn-group">
                            <a href="' . route('admin.job.disable', $jobdata->id) . '" class="btn btn-sm btn-success" title="Disable"><i class="fas fa-lock-open"></i></a>
                        </div>
                    ';

                $detailslink = '
                    <div class="btn-group">
                        <a href="' . route('admin.job.show', $jobdata->id) . '" class="btn btn-sm btn-primary" title="View Details" ><i class="fas fa-eye"></i></a>
                    </div>
                ';

                $editlink = '
                    <div class="btn-group">
                        <a href="' . route('admin.job.edit', $jobdata->id) . '" class="btn btn-sm  mt-1 mb-1 bg-pink" title="Edit" ><i class="fas fa-pencil-alt"></i></a>
                    </div>
                ';

                if (Gate::allows('isAdmin')) {
                    $final = ($jobdata->status == 1) ? $editlink . $link . $inactivelink . $detailslink : $editlink . $link . $activelink . $detailslink;
                    // $final = ($jobdata->status == 1) ? $link . $inactivelink . $detailslink : $link . $activelink . $detailslink;
                } else {
                    $final = '
                        <span class="bg-warning p-1">
                            You are not an admin.
                        </span>
                    ';
                }

                return $final;
            })
            ->make(true);
    }


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


