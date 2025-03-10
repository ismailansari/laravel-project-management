<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\API\Auth\RegisterController;
use App\Http\Controllers\API\Auth\LoginController;

use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\ProjectController;
use App\Http\Controllers\API\TimesheetController;
use App\Http\Controllers\API\AttributeController;
use App\Http\Controllers\API\AttributeValueController;

Route::middleware('api')->post('register', [RegisterController::class, 'register']);
Route::middleware('api')->post('login', [LoginController::class, 'login']);

Route::middleware('auth:api')->group(function () {

    Route::post('/logout', [LoginController::class, 'logout']);

    Route::get('/user', function (Request $request) {
        return $request->user('api');
    });

    Route::apiResource('users', UserController::class);
    Route::apiResource('projects', ProjectController::class);
    Route::apiResource('timesheet', TimesheetController::class);
    Route::apiResource('attribute', AttributeController::class);
    Route::apiResource('attribute-value', AttributeValueController::class);

    // extra routes for testing
    Route::prefix('user')->group(function () {
        Route::prefix('{id}')->group(function (){
            Route::get('/timesheets', [UserController::class, 'userTimeSheets']);
            Route::get('/projects', [UserController::class, 'userProjects']);
        });
    });

});

