<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // update the users
        Schema::table('users', function (Blueprint $table) {
            $table->string('phone_number');
            $table->string('place');
            $table->string('street');
            $table->string('house_number');
            $table->string('postal_code');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // drop if exists
        Schema::dropIfExists('users');
    }
}
