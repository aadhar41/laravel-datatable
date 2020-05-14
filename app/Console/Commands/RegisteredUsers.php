<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMailable;
use DB;
// use Mail;
use DateTime;
use DatePeriod;
use DateInterval;
use Illuminate\Support\Facades\Log;

class RegisteredUsers extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'registered:users';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send an email of registered users';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $totalUsers = DB::table('users')
                        // ->whereRaw('Date(created_at) = CURDATE()')
                        ->count();


            ##### email send #####

            $from_mail = 'rs12733@gmail.com';
            $site_title = 'Blog';

            // Send email
            $sdata=[];
            $data=[];
            $sdata['name'] = 'Aadhar gaur';
            $sdata['count'] = $totalUsers;
            $email = 'rs12732@gmail.com';

            Mail::send('emails.registeredcount', ['data' => $sdata], function ($m) use ($data, $from_mail, $site_title, $email) {
                $m->from($from_mail, $site_title);
                $m->to($email, 'Rohit')->subject('Registered users.');
            });

            ##### email send. ends #####
    }
}
