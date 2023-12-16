<?php

namespace Database\Seeders\User;

use App\Models\User;
use App\Models\UserPermission;
use App\Models\UserRole;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class EmployeeSeeder extends Seeder
{
    /** Database\Seeders\User\EmployeeSeeder
     * Run the database seeds.
     *
     * @return void
     *
     */
    public function run()
    {
        $employees = [
            [
                "name" => "মোঃ মাহমুদুর রহমান",
                "designation" => "উৎপাদন কর্মকর্তা",
            ],
            [
                "name" => "মোঃ পারভেজ হাসান",
                "designation" => "সেলস এক্সিকিউটিভ",
            ],
            [
                "name" => "মো: রোকন উদ্দিন শাহিন",
                "designation" => "হিসাব রক্ষক",
            ],
            [
                "name" => "আব্দুল বাতেন",
                "designation" => "সেলস ম্যানেজার",
            ],
            [
                "name" => "আশিক খন্দকার",
                "designation" => "ডিজাইনার",
            ],
            [
                "name" => "মোঃ এরশাদ আলী",
                "designation" => "উৎপাদন সহকারী",
            ],
            [
                "name" => "মোঃ তোহীদুল ইসলাম",
                "designation" => "স্টোর ম্যানেজার",
            ],
            [
                "name" => "মোঃ খলিলুর রহমান",
                "designation" => "ষ্টোর ম্যানেজম্যান্ট",
            ],
            [
                "name" => "মোঃ দেলোয়ার",
                "designation" => "অফিস সহকারি",
            ],
            [
                "name" => "মোঃ মেহেদী হাসান",
                "designation" => "অফিস সহকারি",
            ],
        ];

        foreach ($employees as $i=>$employee ) {
            $user = new User();
            $user->first_name = $employee["name"];
            $user->last_name = '';
            $user->user_name = 'emp'.$i+1;
            $user->telegram_id = '812239513';
            // $user->role_id = 3;
            $user->mobile_number = '0161256em'.$i+1;
            $user->email = 'em'.$i.'@gmail.com';
            $user->password = Hash::make('12345678');
            $user->save();
            $user->roles()->attach([7]); // employee
        }
    }
}
