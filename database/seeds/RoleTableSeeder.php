<?php

use Illuminate\Database\Seeder;

class RoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role_employee              = new \App\Role();
        $role_employee->name        = 'admin';
        $role_employee->description = 'Admin';
        $role_employee->save();
        $role_manager              = new \App\Role();
        $role_manager->name        = 'user';
        $role_manager->description = 'User';
        $role_manager->save();

    }
}
