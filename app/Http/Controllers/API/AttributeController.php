<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\AttributeSaveRequest;
use App\Http\Requests\API\FilterRequest;
use App\Repository\Eloquent\AttributeRepository;
use Illuminate\Http\JsonResponse;

class AttributeController extends BaseController
{
    public function __construct(private readonly AttributeRepository $repository)
    {
        //
    }

    public function index(FilterRequest $request): JsonResponse
    {
        return $this->sendResponse($this->repository->all($request), 'Attributes retrieved successfully.');
    }

    public function show($id): JsonResponse
    {
        return $this->sendResponse($this->repository->find($id), 'Attribute retrieved successfully.');
    }

    public function store(AttributeSaveRequest $request): JsonResponse
    {
        $data = $request->validated();

        $attribute = $this->repository->create($data);

        return $this->sendResponse($attribute, 'Attribute created successfully', 201);
    }

    public function update(AttributeSaveRequest $request, $id): JsonResponse
    {
        $data = $request->validated();
        $attribute = $this->repository->find($id);

        return $this->sendResponse($this->repository->update($attribute, $data), 'Attribute updated successfully.');
    }

    public function destroy($id): JsonResponse
    {
        $attribute = $this->repository->find($id);

        return $this->sendResponse($this->repository->delete($attribute), 'Attribute deleted successfully.');
    }
}
