<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Role;
class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    $role_user = Role::where('name', 'user')->first();
    $role_admin  = Role::where('name', 'admin')->first();


    $user = new User();
    $user->last_name = '1';
    $user->first_name = 'User';
    $user->phone = '+4234324324';
    $user->email = 'user@gmail.com';
    $user->password = bcrypt('user');
    $user->save();
    $user->roles()->attach($role_user);

    $admin = new User();
    $admin->last_name = 'Manager Name';
    $admin->first_name = 'Manager Name';
    $admin->phone = '+2131854848';
    $admin->email = 'admin@gmail.com';
    $admin->password = bcrypt('admin');
    $admin->save();
    $admin->roles()->attach($role_admin);
    }
}
