<?php

namespace App\Http\Controllers\API\Auth;

use App\Http\Controllers\API\BaseController;
use App\Http\Requests\API\Auth\RegisterRequest;
use App\Repository\Eloquent\UserRepository;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\JsonResponse;

class RegisterController extends BaseController
{
    public function __construct(private readonly UserRepository $repository)
    {
        //
    }

    public function register(RegisterRequest $request): JsonResponse
    {
        $data = $request->validated();

        $userData = [
            'first_name' => $data['first_name'],
            'last_name' => $data['last_name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ];

        $user = $this->repository->create($userData);

        return $this->sendResponse($user, 'User created successfully', 201);
    }
}
