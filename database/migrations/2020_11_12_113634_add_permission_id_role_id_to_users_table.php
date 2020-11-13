<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddPermissionIdRoleIdToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('permission_role', function (Blueprint $table) {
          $table->foreignId('permission_id')->references('id')->on('permissions')->onDelete('cascade');
          $table->foreignId('role_id')->references('id')->on('roles')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('permission_role', function (Blueprint $table) {
            $table->dropColumn('permission_id');
            $table->dropColumn('role_id');

        });
    }
}
