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


