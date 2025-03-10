<?php

namespace App\Http\Controllers\API\Auth;

use App\Http\Controllers\API\BaseController;
use App\Http\Requests\API\Auth\LoginRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends BaseController
{
    public function login(LoginRequest $request)
    {
        $data = $request->validated();

        $loggedIn = Auth::attempt(['email' => $data['email'], 'password' => $data['password']]);

        if (!$loggedIn) {
            return $this->sendError('Unauthorized.', ['error' => 'Incorrect Credentials'], 401);
        }

        $user = Auth::user();

        $token = $user->createToken('apiUserToken')->accessToken;

        return $this->sendResponse(
            ['user' => $user, 'token' => $token, 'token_type' => 'Bearer'],
            'User logged in successfully.'
        );
    }

    public function logout(Request $request)
    {
        $user = $request->user('api');
        $status = $user->token()->revoke();

        return $this->sendResponse(['status' => $status], 'User logged out successfully.');
    }
}
