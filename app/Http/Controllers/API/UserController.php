<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\Auth\RegisterRequest;
use App\Http\Requests\API\FilterRequest;
use App\Http\Requests\API\UserUpdateRequest;
use App\Repository\Eloquent\UserRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends BaseController
{
    public function __construct(private readonly UserRepository $repository)
    {
        //
    }

    public function index(FilterRequest $request): JsonResponse
    {
        return $this->sendResponse($this->repository->all($request), 'Users retrieved successfully.');
    }

    public function show(FilterRequest $request, $id): JsonResponse
    {
        return $this->sendResponse($this->repository->find($id), 'User retrieved successfully.');
    }

    public function store(RegisterRequest $request): JsonResponse
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

    public function update(UserUpdateRequest $request, $id): JsonResponse
    {
        $data = $request->validated();
        $user = $this->repository->find($id);

        return $this->sendResponse($this->repository->update($user, $data), 'User updated successfully.');
    }

    public function destroy($id): JsonResponse
    {
        if ($id == Auth::user()->id) {
            return $this->sendError('Bad Request', [], 401);
        }

        $user = $this->repository->find($id);

        return $this->sendResponse($this->repository->delete($user), 'User deleted successfully.');
    }

    public function userProjects($id)
    {
        $user = $this->repository->find($id);

        return $this->sendResponse($this->repository->getUserProjects($user), 'Projects retrieved successfully.');
    }

    public function userTimeSheets($id)
    {
        $user = $this->repository->find($id);

        return $this->sendResponse($this->repository->getUserTimeSheets($user), 'TimeSheets retrieved successfully.');
    }
}
