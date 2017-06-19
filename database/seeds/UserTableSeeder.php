<?php

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    $role_employee = \App\Role::where('name', 'user')->first();
    $role_manager  = \App\Role::where('name', 'admin')->first();
    $employee = new \App\User();
    $employee->last_name = '1';
    $employee->first_name = 'User';
    $employee->phone = 'User';
    $employee->email = 'employee@example.com';
    $employee->password = bcrypt('secret');
    $employee->save();
    $employee->roles()->attach($role_employee);
    $manager = new \App\User();

    $manager->last_name = 'Manager Name';
    $manager->first_name = 'Manager Name';
    $manager->phone = 'Manager Name';
    $manager->email = 'manager@example.com';
    $manager->password = bcrypt('secret');
    $manager->save();
    $manager->roles()->attach($role_manager);
    }
}
